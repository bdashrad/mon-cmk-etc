# Put your host names here
# all_hosts = [ 'localhost' ]
all_hosts = [ 'localhost','web-4.opssep.hosting.acquia.com' ]

# Set global parameters
check_parameters = [
  # Filesystem checks - Warn 90% Crit 95%
  ( (90, 95), all_hosts, [ "fs_" ]),
]
