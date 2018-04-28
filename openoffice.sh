#!/bin/bash
OOo_HOME=/usr/bin
SOFFICE_PATH=$OOo_HOME/soffice
PIDFILE=/var/run/openoffice-server.pid

set -e

case "$1" in
start)
  if [ -f $PIDFILE ]; then
    echo "LibreOffice headless server has already started."
    sleep 5
    exit
  fi
  echo "Starting LibreOffice headless server"
  $SOFFICE_PATH --nologo --norestore --invisible --headless --accept='socket,host=0,port=8100,tcpNoDelay=1;urp;'
  touch $PIDFILE
  ;;
stop)
if [ -f $PIDFILE ]; then
  echo "Stopping LibreOffice headless server."
  killall -9 soffice && killall -9 soffice.bin
  rm -f $PIDFILE
  exit
fi
  echo "LibreOffice headless server is not running."
  exit
  ;;
*)
  echo "Usage: $0 {start|stop}"
  exit 1
esac

exit 0
