class profile::ssh_server {
        package { 'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure  => 'running',
                enable  => 'true',
        }
        ssh_authorized_key { 'root@puppetmaster.barrio.com':
                ensure  => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDeyKAqqaowY5552yFSMT2e/lYbYXM8euD3c8uw0vINhn2H6qosKj8Rb8gymr0JKKOnjlbplpmzQPR5Qto598Grkr1S27QtM8uCbJvSl+tKwD77Km9QiITEAmf/rwiYfSfBtZxf+d/87rmhcddhDO5piKuzj1JmyzrBXH6//otzjbIoJriMnOD4T4DWcLztI8c/w9bCz/uiJCG9TXSEtg3FwQ0x7u3kixWOT+QzwUe6XhCS35w4TPB912LW/78KTCyA+Wy2JkgJJr+iDxpsArGqMbxtO37ugFYSENA8AWm4mXZhFLRZa2kkz4dJbFdyN0nRpMlptCla4GxeMaUQP/6V',
