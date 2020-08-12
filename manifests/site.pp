node default { 
  file {'/root/README':
    ensure  => 'file',
    content => 'Ivan will be a DevOps Engineer',
    owner.  => 'root',
    }
 }
