#! /bin/sh

### BEGIN INIT INFO
# Provides:          pi-cpu-temperature-display.py
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
### END INIT INFO

# If you want a command to always run, put it here

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting pi-cpu-temperature-display.py"
    /usr/local/bin/pi-cpu-temperature-display.py &
    ;;
  stop)
    echo "Stopping pi-cpu-temperature-display.py"
    pkill -f /usr/local/bin/pi-cpu-temperature-display.py
    ;;
  *)
    echo "Usage: /etc/init.d/pi-cpu-temperature-display.sh {start|stop}"
    exit 1
    ;;
esac

exit 0
