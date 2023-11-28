# Puppet Manifest: install_flask.pp
# Description: Installs Flask version 2.1.0 using pip3 on Ubuntu 20.04 LTS

# Install Python3 and pip3
package { 'python3':
  ensure => present,
}

package { 'python3-pip':
  ensure => present,
  require => Package['python3'],
}

# Install Flask version 2.1.0 using pip3
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}

