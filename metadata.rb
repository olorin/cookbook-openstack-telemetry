name             'openstack-metering'
maintainer       'AT&T Services, Inc.'
maintainer_email 'cookbooks@lists.tfoundry.com'
license          'Apache 2.0'
description      'The OpenStack Metering service Ceilometer.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '8.2.0'

recipe 'openstack-metering::agent-central', 'Installs agent central service.'
recipe 'openstack-metering::agent-compute', 'Installs agent compute service.'
recipe 'openstack-metering::api', 'Installs API service.'
recipe 'openstack-metering::client', 'Installs client.'
recipe 'openstack-metering::collector', 'Installs collector service. If the NoSQL database is used for metering service, ceilometer-dbsync will not be executed.'
recipe 'openstack-metering::common', 'Common metering configuration.'
recipe 'openstack-metering::identity_registration', 'Registers the endpoints with Keystone'

%w{ ubuntu suse }.each do |os|
  supports os
end

depends 'openstack-common', '~> 8.1'
depends 'openstack-identity', '~> 8.0'
