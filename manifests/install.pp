# This class takes care of 
# the package installation
class amavisd::install (
  $package_name,
  $package_ensure,
) {
  package { $package_name:
    ensure => $package_ensure,
  }
}
