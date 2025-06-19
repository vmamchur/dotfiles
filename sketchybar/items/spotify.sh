#!/bin/bash

sketchybar --add event spotify_change "com.spotify.client.PlaybackStateChanged"

sketchybar --add item spotify.name right \
    --subscribe spotify.name spotify_change \
    --set spotify.name \
    script="$PLUGIN_DIR/spotify.sh" \
    updates=on \
    background.padding_right=4
