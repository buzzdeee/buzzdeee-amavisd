class amavisd::params {
  $mydomain = 'example.com'
  $listen_port = '10024'
  $forward_port = '10025'
  $clamav_socket = '/var/run/clamav/clamd.sock'
  $package_name = 'amavisd-new'
  $package_ensure = 'installed'
  $service_name = 'amavisd'
  $service_ensure = 'running'
  $service_flags  = undef
}
