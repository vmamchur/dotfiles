#!/bin/bash

if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --set $NAME label="| $INFO" icon="$($CONFIG_DIR/plugins/icons.sh "$INFO")"
fi
