#!/bin/bash

cmd=`basename "$0"`

print_use() {
    echo "Use: $cmd start|stop|restart <server>"
    echo "e.g.: $cmd start zendsvr6"
  exit 1
}

if [ $# -eq 2 ]
then
  action=$1
  server=${2^^}

  case "$action" in
    start)
      system "STRTCPSVR SERVER(*HTTP) HTTPSVR($server)"
      ;;
    stop)
      system "ENDTCPSVR SERVER(*HTTP) HTTPSVR($server)"
      ;;
    restart)
      system "ENDTCPSVR SERVER(*HTTP) HTTPSVR($server)"
      system "STRTCPSVR SERVER(*HTTP) HTTPSVR($server)"
      ;;
    *)
        print_use
  esac
else
  print_use
fi
