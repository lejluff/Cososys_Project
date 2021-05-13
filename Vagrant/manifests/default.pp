# Default paths
Exec {
  path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
}
# This is the modules to install
include bootstrap 
include other
include apache
include php
include mysql
