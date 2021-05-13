# Install Apache and make sure service is running
class apache {
  package { "apache2":
    ensure => present,
    require => Exec["apt-get update"]
  }

  # ensures that mode_rewrite is loaded and modifies the default configuration file
  file { "/etc/apache2/mods-enabled/rewrite.load":
    ensure => link,
    target => "/etc/apache2/mods-available/rewrite.load",
    require => Package["apache2"]
  }

  file { "/etc/apache2/sites-available/000-default.conf":
    ensure => present,
    source => "/vagrant/manifests/vagrant_webroot",
    require => Package["apache2"]
  }

  file { "/etc/apache2/sites-enabled/000-default.conf":
    ensure => link,
    target => "/etc/apache2/sites-available/000-default.conf",
    require => File["/etc/apache2/sites-available/000-default.conf"]
  }


  # starts the apache2 service once the packages installed, and monitors changes to its configuration files and reloads if nesessary
  service { "apache2":
    ensure => running,
    require => Package["apache2"],
    subscribe => [
      File["/etc/apache2/mods-enabled/rewrite.load"],
      File["/etc/apache2/sites-available/000-default.conf"]
    ],
  }
}
