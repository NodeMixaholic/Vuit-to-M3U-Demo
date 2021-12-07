# Vuit-to-M3U-Demo
A demonstration on how to convert locals to m3u entries via Vuit. For educational and personal use only please.

## How to
`./vuit-to-m3u-techdemo.sh stationId`
Where stationId is the stationId you wish to download as an entry.
Note that these entries don't last very long.

## A practical example (texas-stations.sh)

```
#!/bin/bash
echo '#EXTM3U' > texasStations.m3u # note that any script must start with an eqivelent line in their respective language if using this library

stationid="6969" # Censored to not get sued. (Hopefully.)
./vuit-to-m3u-techdemo.sh $stationid
cat vuit-to-m3u-techdemo_$stationid.m3uentry >> texasStations.m3u

stationid="420365" # Censored to not get sued. (Hopefully.)
./vuit-to-m3u-techdemo.sh $stationid
cat vuit-to-m3u-techdemo_$stationid.m3uentry >> texasStations.m3u

stationid="666999" # Censored to not get sued. (Hopefully.)
./vuit-to-m3u-techdemo.sh $stationid
cat vuit-to-m3u-techdemo_$stationid.m3uentry >> texasStations.m3u

rm vuit-to-m3u-techdemo_*.m3uentry # note that we must to cleanup ourselves! (the library does not do this for us!)
sleep 1h
bash ported-code.sh
```
