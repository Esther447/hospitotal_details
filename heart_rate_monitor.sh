#!/bin/bash

generate_heart_rate() {
	echo $((RANDOM % 41 + 60))
}

read -p "Enter device name: " device_name

log_file="heart_ratelog.txt"

>$log_file

echo "Heart rate monitoring started for device: $device_name"
echo "Logging to: $log_file"
echo "Process ID (PID): $$"

while true
do
	timestamp=$(date +"%Y-%m-%d %H:%M:%S")

	heart_rate=$(generate_heart_rate)

echo "$timestamp | Device: $device_name | Heart Rate: $heart_rate bpm" >> $log_file

sleep 1
done
