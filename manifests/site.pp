node default {
}
node 'puppetmaster.barrio.com' {
  include role::master_server
  file { '/root/README':
   ensure  => file,
   content => "Welcome to ${fqdn}",
   }
}
node /^web/ { 
  include role::app_server
}
node /^db/ {
  include role::db_server
}
