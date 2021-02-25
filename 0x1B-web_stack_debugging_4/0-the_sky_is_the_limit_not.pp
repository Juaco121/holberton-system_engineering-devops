# we are testing how well our web server setup featuring Nginx is doing under pressure and it turns out it’s not doing well

exec { 'change ulimit value':
  command  => 'sed -i "s/15/30000/" /etc/default/nginx',
  provider => shell,
}

-> exec { 'restart nginx':
  command  => 'sudo service nginx restart',
  provider => shell,
}
