#!/bin/bash
stationId = $1
filename="vuit-to-m3u-techdemo_$1.m3uentry"

curl "https://www.vuit.com/api/services/StreamInfo?stationId=$1" > tempiptvlollmao.json
city=$(cat tempiptvlollmao.json | jq .liveChannel.city | tr -d '"')
state=$(cat tempiptvlollmao.json | jq .liveChannel.state | tr -d '"')
stationName=$(cat tempiptvlollmao.json | jq .liveChannel.name | tr -d '"')
echo "#EXTINF:-1 group-title=\"$city, $state\", $stationName" > $filename
cat tempiptvlollmao.json | jq .streamUrl >> $filename
printf "\n" >> $filename # for the next line in case the user wishes to use this file