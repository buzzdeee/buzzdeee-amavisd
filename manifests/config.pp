class amavisd::config (
  $mydomain,
) {
  file { '/etc/amavisd.conf':
    owner   => 'root',
    group   => '0',
    mode    => '0644',
    content => template('amavisd/amavisd.conf.erb'),
  }
}
