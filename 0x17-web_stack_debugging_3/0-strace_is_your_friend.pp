# Fix the /var/www/html/wp-settings.php dupplicated 'p' line that rise a 500 error

exec { 'fix setting file':
  provider => shell,
  command  => 'sed -i \'s/.phpp/.php/\' /var/www/html/wp-settings.php',
}
