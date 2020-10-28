#! /bin/sh
#Restart script

if [ $1 == "포트번호"]; then
  stop.sh
  sleep 1
  start.sh
  echo "Executed Successfully"
  clear
  sleep 1
  tail -f ./LOG/log.out
fi
