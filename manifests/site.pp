node default { 
 }
node 'puppetmaster.barrio.com' {
 include role::master_server
 }
