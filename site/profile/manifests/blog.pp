

class profile::blog {

  # Manage apache with mod_php
  include apache
  include apache::mod::php
  
  # Manage mysql with php bindings
  include mysql::server
  class { 'mysql::bindings':
    php_enable => true,
  }
  
  # Install wordpress somewhere that apache can see it
  class { 'wordpress':
    install_dir => '/var/www/html',
  }
  

}
