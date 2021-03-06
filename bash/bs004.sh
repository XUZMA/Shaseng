#! /bin/sh
#
# examples from
# http://bash.cyberciti.biz/guide/Shebang

### BEGIN INIT INFO
# Provides:          policykit
# Required-Start:    $local_fs
# Required-Stop:     $local_fs
# Default-Start:     2 3 4 5
# Default-Stop:
# Short-Description: Create PolicyKit runtime directories
# Description:       Create directories which PolicyKit needs at runtime,
#                    such as /var/run/PolicyKit
### END INIT INFO
 
# Author: Martin Pitt <martin.pitt@ubuntu.com>
 
case "$1" in
  start)
        mkdir -p /var/run/PolicyKit
        chown root:polkituser /var/run/PolicyKit
        chmod 770 /var/run/PolicyKit
	;;
  stop|restart|force-reload)
	;;
  *)
	echo "Usage: $SCRIPTNAME {start|stop|restart|force-reload}" >&2
	exit 3
	;;
esac
 
:
