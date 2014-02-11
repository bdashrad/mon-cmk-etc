# Put your host names here
# all_hosts = [ 'localhost' ]
all_hosts = [
  'localhost|mon',
#  'mon-2.opssep.hosting.acquia.com|mon',
  'monui-3.opssep.hosting.acquia.com|monui',
  'web-4.opssep.hosting.acquia.com|web',
  'backup-5.opssep.hosting.acquia.com|web',
  'ded-6.opssep.hosting.acquia.com|web|fs|db',
  'ded-7.opssep.hosting.acquia.com|web|fs|db',
  'bal-8.opssep.hosting.acquia.com|bal',
  'bal-9.opssep.hosting.acquia.com|bal',
  'svn-10.opssep.hosting.acquia.com|svn',
  'dns-11.opssep.hosting.acquia.com|dns',
]

# Set global parameters
check_parameters = [
  # Filesystem checks - Warn 90% Crit 95%
  ( (90, 95), all_hosts, [ "fs_" ]),
]
