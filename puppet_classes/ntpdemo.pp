# Definition of a class
# Class: chronydemo
#
#
class chronydemo {

# Installing Chrony Package
  package { 'chrony':
    ensure => 'present'
  }

# Configuring Chrony configuration file
  file { '/etc/chrony.conf':
    ensure  => 'present',
    content => 'allow 10.0.1.0/24',
  }

# Starting Chrony services
  service { 'chronyd':
    ensure => 'running',
  }
}

# Declaration of a class
include chronydemo
