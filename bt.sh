#!/bin/bash
# vi: ft=bash

mapfile deviceList < <(bluetoothctl -- devices)
length=$(echo -n "${deviceList[@]}" | wc -l)

declare -A devices
for (( i=0; i < $length; i++ )); do
    addr=$( echo ${deviceList[$i]} | cut -d " " -f 2 )
    name=$( echo ${deviceList[$i]} | cut -d " " -f 3-)
    devices["$name"]="$addr"
done

bluetoothctl -- power on && sleep 1 || exit 1

while [[ "$@" ]]; do
    bluetoothctl -- connect "${devices["$1"]}" || echo "Unrecognised device: $1"
    shift
    sleep 1
done
