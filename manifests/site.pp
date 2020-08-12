node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}
node 'master.puppet.vm' {
  include role::master_server
}
node /^web/ { 
  include role::web_server
}
node /^db/ {
  include role::db_server
}
