#!/bin/bash

param=$(curl -s wttr.in/$1?format=j1 | jq '."current_condition"[0]')
temp=$(echo "$param" | jq .temp_C | tr -d \")
humidity=$(echo "$param" | jq .humidity | tr -d \")
echo "Temperature: $temp C"
echo "Humidity: $humidity %"
