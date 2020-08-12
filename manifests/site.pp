node default { 
  file { '/rroot/README':
   ensure  => file,
   content => 'Ivan is an Infrastructure and DevOps Engineer',
   owner   => 'root', 
 }
}
node 'puppetmaster.barrio.com' {
 include role::master_server
 }
 
 node /^web/ {
  include role::app_server
 }
 
 node /^db/ {
  include role::db_server
 }
 
