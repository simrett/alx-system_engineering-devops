<<<<<<< HEAD
# problem on line 137 /var/www/html/wp-settings.php
$rep = 'require_once( ABSPATH . WPINC . \'/CLASS-WP-LOCALE.PHP\' );'
$settings = '/var/www/html/wp-settings.php'
$cmd = "sed -i \"/class-wp-locale.phpp/c ${::rep}\" ${::settings}"
exec { 'serverfix':
  path    => '/bin',
  command => $cmd,
=======
# puppet script to replace a line in a file on a server

$file_to_edit = '/var/www/html/wp-settings.php'

#replace line containing "phpp" with "php"

exec { 'replace_line':
  command => "sed -i 's/phpp/php/g' ${file_to_edit}",
  path    => ['/bin','/usr/bin']
>>>>>>> c11cc34e181f66079540a526368f624719a06360
}
