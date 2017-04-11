# == Class: amavisd
#
# Full description of class amavisd here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'amavisd':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Sebastian Reitenbach <sebastia@l00-bugdead-prods.de>
#
# === Copyright
#
# Copyright 2014 Your name here, unless otherwise noted.
#
class amavisd (
  $mydomain       = $::amavisd::params::mydomain,
  $listen_port    = $::amavisd::params::listen_port,
  $forward_port   = $::amavisd::params::forward_port,
  $clamd_host     = $::amavisd::params::clamd_host,
  $clamd_port     = $::amavisd::params::clamd_port,
  $package_name   = $::amavisd::params::package_name,
  $package_ensure = $::amavisd::params::package_ensure,
  $service_name   = $::amavisd::params::service_name,
  $service_ensure = $::amavisd::params::service_ensure,
  $service_flags  = $::amavisd::params::service_flags,
) inherits amavisd::params {

  class { 'amavisd::install':
    package_name   => $package_name,
    package_ensure => $package_ensure,
  }
  class { 'amavisd::config':
    mydomain     => $mydomain,
    listen_port  => $listen_port,
    forward_port => $forward_port,
    clamd_host   => $clamd_host,
    clamd_port   => $clamd_port,
  }
  class { 'amavisd::service':
    service_name   => $service_name,
    service_ensure => $service_ensure,
    service_flags  => $service_flags,
  }

  Class['amavisd::install']
  -> Class['amavisd::config']
  ~> Class['amavisd::service']
}
