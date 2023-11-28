# script to execute a command using puppet
exec { 'pkill -f killmenow':
path => '/usr/bin',
}
