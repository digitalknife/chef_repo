name 'JR_BaselineConfig'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures JR_BaselineConfig'
long_description 'Installs/Configures JR_BaselineConfig'
version '1.1.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

depends 'JR_telegraf', '= 1.1.0'
depends 'JR_crontask', '= 1.1.0'


#NSC depends 'public_cookbook', '= 1.4.5'



# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/JR_BaselineConfig/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/JR_BaselineConfig'
