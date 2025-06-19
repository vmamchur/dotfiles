#!/bin/bash

sketchybar --add item front_app left \
  --set front_app background.color=$ACCENT_COLOR \
  icon.font="sketchybar-app-font:Regular:12.0" \
  icon.color=$ACTIVE_ITEM_COLOR \
  label.color=$ACTIVE_ITEM_COLOR \
  padding_left=8 \
  script="$PLUGIN_DIR/front-app.sh" \
  --subscribe front_app front_app_switched
