# This class takes care
# to deploy the config file
class amavisd::config (
  $mydomain,
  $listen_port,
  $forward_port,
  $clamd_host,
  $clamd_port,
) {
  file { '/etc/amavisd.conf':
    owner   => 'root',
    group   => '0',
    mode    => '0644',
    content => template('amavisd/amavisd.conf.erb'),
  }
}
