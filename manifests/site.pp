node default {
}
node 'puppetmaster.barrio.com' {
  include role::puppetmaster_server
  file { '/root/README':
   ensure  => file,
   content => $fqdn,
   }
}
node /^web/ { 
  include role::app_server
}
node /^db/ {
  include role::db_server
}
