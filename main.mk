# Put your host names here
# all_hosts = [ 'localhost' ]
all_hosts = [
  'localhost|mon',
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

# Set Service checks by server type
checks = [
  ( [ "web" ], all_hosts, "ps", {
                                  "process": "/usr/sbin/apache2",
                                  "warnmin": "1",
                                  "warnmax": "100",
                                  "okmin": "1",
                                  "okmax": "1000",
                                }
  ),
]

#debug_log=/mnt/tmp/cmk.debug
