class amavisd::service (
  $service_name,
  $service_ensure,
  $service_flags,
) {
  service { "$service_name":
    ensure => $service_ensure,
    flags  => $service_flags,
  }
}
