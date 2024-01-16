# problem on line 137 /var/www/html/wp-settings.php
$rep = 'require_once( ABSPATH . WPINC . \'/CLASS-WP-LOCALE.PHP\' );'
$settings = '/var/www/html/wp-settings.php'
$cmd = "sed -i \"/class-wp-locale.phpp/c ${::rep}\" ${::settings}"
exec { 'serverfix':
  path    => '/bin',
  command +> $cmd,
}
