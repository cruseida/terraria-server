#!/bin/bash

./docker_build.sh

docker run \
  -p 7777:7777 \
  -p 7878:7878 \
  -e WORLD_FILENAME= \
  -e TERRACORD_ENABLED=true \
  -e TERRACORD_BOT_TOKEN="<bot token>" \
  -e TERRACORD_CHANNEL_ID="<channel id>" \
  -e TERRACORD_OWNER_ID="<owner id>" \
  -v $(pwd)/terraria_data/worlds:/tshock/worlds \
  -v $(pwd)/terraria_data/plugins:/plugins \
  -v $(pwd)/terraria_data/logs:/tshock/logs \
  $@ \
  --name terraria-server \
  -it \
  --rm \
  cruseida/terraria:latest
