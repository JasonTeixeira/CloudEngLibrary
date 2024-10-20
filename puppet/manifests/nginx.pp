package { 'nginx':\n  ensure => installed,\n}\nservice { 'nginx':\n  ensure => running,\n  enable => true,\n}
