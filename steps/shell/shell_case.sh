#! /bin/sh

case "$1" in
	start)
		echo "start"
		;;
	stop)
		echo stop
		;;
	status)
		echo rhstatus
		;;
	restart|reload)
		echo restart
		;;
	condrestart)
		echo condrestart
        [ -f /var/lock/subsys/syslog ] && restart || :
		;;

	*)
		echo $"Usage: $0 {start|stop|status|restart|condrestart}"
		exit 1
esac