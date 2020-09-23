class user {
  user { 'trial':
    ensure => present,
    comment => 'trial user',
    home => '/home/trial',
    managehome => true
  }
}

