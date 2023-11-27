#!/bin/sh
function on_signal(){
	signal="$1"
	echo "SIGNAL $signal received, bye bye!"
	exit 0
}

trap 'on_signal SIGINT' SIGINT
trap 'on_signal SIGTERM' SIGTERM
trap 'on_signal SIGKILL' SIGKILL

# just print a counter and increment by one every second
i=1
while true; do
  echo -n "$i "
  i=$(( $i+1 ))
  sleep 1
done
