# Definition of a class
# Class: ntpdemo
#
#
class ntpdemo {

# Installing NTP Package
  package { 'chrony':
    ensure => 'present'
  }

# Configuring NTP configuration file
  file { '/etc/chrony.conf':
    ensure  => 'present',
    content => 'allow 10.0.1.0/24',
  }

# Starting NTP services
  service { 'chronyd':
    ensure => 'running',
  }
}

# Declaration of a class
include ntpdemo
