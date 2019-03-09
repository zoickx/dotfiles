#!/bin/bash

while true;
do
  # get battery status
  bat_dir="/sys/class/power_supply/BAT0"
  bat_pct=$(cat "${bat_dir}/capacity")
  bat_sts=$(cat "${bat_dir}/status")

  if [ "$bat_sts" == "Discharging" ]; then
    bat_sts="-"
  elif [ "$bat_sts" == "Charging" ]; then
    bat_sts="+"
  else
    bat_sts="="
  fi

  Battery="$bat_pct$bat_sts"


  # minimal simple time format
  Time=$(date +%I:%M)


  # global ip if connected
  GIP=$(curl -s https://api.ipify.org)

  # set the status, rince, repeat
  xsetroot -name "[ $GIP | $Battery | $Time ]"
  sleep 30
done
