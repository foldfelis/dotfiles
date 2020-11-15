#!/bin/bash
# baraction.sh for spectrwm status bar

## DISK
hdd() {
  hdd="$(df -h | awk 'NR==4{print $3, $5}')"
  echo -e "HDD: $hdd"
}

## RAM
mem() {
  mem=`free | awk '/Mem/ {printf "%dM/%dM\n", $3 / 1024.0, $2 / 1024.0 }'`
  echo -e "MEM: $mem"
}

## CPU
cpu() {
  read cpu a b c previdle rest < /proc/stat
  prevtotal=$((a+b+c+previdle))
  sleep 0.5
  read cpu a b c idle rest < /proc/stat
  total=$((a+b+c+idle))
  cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
  echo -e "CPU: $cpu%"
}

## VOLUME
vol() {
  vol=`pactl list sinks | grep Volume:\ front | awk -F ',' '{print $2}' | awk -F ' ' '{print $4"("$6"dB)"}'`
  mut=`pactl list sinks | grep -o Mute:\ yes | awk -F ':' '{print $1" "}'`
  echo -e "VOL: $mut$vol"
}

SLEEP_SEC=0.5
#loops forever outputting a line every SLEEP_SEC secs

# It seems that we are limited to how many characters can be displayed via
# the baraction script output. And the the markup tags count in that limit.
# So I would love to add more functions to this script but it makes the 
# echo output too long to display correctly.
while :; do
  echo "+@fg=1;$(cpu) +@fg=0; | +@fg=2;$(mem) +@fg=0; | +@fg=3;$(hdd) +@fg=0; | +@fg=4;$(vol) +@fg=0; |"
  sleep $SLEEP_SEC
done
