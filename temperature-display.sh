#! /bin/sh

### BEGIN INIT INFO
# Provides:          temperature-display.py
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
### END INIT INFO

# If you want a command to always run, put it here

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting temperature-display.py"
    /usr/local/bin/temperature-display.py &
    ;;
  stop)
    echo "Stopping temperature-display.py"
    pkill -f /usr/local/bin/temperature-display.py
    ;;
  *)
    echo "Usage: /etc/init.d/temperature-display.sh {start|stop}"
    exit 1
    ;;
esac

exit 0