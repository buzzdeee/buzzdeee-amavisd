# The default values of parameters
# of the class
class amavisd::params {
  $mydomain = 'example.com'
  $listen_port = '10024'
  $forward_port = '10025'
  $clamd_host = '127.0.0.1'
  $clamd_port = '3310'
  $package_name = 'amavisd-new'
  $package_ensure = 'installed'
  $service_name = 'amavisd'
  $service_ensure = 'running'
  $service_flags  = undef
}
