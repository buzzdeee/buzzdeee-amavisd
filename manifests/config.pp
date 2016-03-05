class amavisd::config (
  $mydomain,
  $listen_port,
  $forward_port,
  $clamav_socket,
) {
  file { '/etc/amavisd.conf':
    owner   => 'root',
    group   => '0',
    mode    => '0644',
    content => template('amavisd/amavisd.conf.erb'),
  }
}
