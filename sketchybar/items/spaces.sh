#!/bin/bash

sketchybar --add event aerospace_workspace_change

sketchybar --add item space.C left \
    --subscribe space.C aerospace_workspace_change \
    --set space.C \
    background.height=32 \
    background.drawing=off \
    icon="󰅴" \
    label="code" \
    click_script="aerospace workspace C" \
    script="$PLUGIN_DIR/spaces.sh C"

sketchybar --add item space.B left \
    --subscribe space.B aerospace_workspace_change \
    --set space.B \
    background.height=32 \
    background.drawing=off \
    icon="󰯊" \
    label="web" \
    click_script="aerospace workspace B" \
    script="$PLUGIN_DIR/spaces.sh B"

sketchybar --add item space.W left \
    --subscribe space.W aerospace_workspace_change \
    --set space.W \
    background.height=32 \
    background.drawing=off \
    icon="󰃖" \
    label="work" \
    click_script="aerospace workspace W" \
    script="$PLUGIN_DIR/spaces.sh W"

sketchybar --add item space.T left \
    --subscribe space.T aerospace_workspace_change \
    --set space.T \
    background.height=32 \
    background.drawing=off \
    icon="󰭻" \
    label="chat" \
    click_script="aerospace workspace T" \
    script="$PLUGIN_DIR/spaces.sh T"

sketchybar --add item space.other left \
    --subscribe space.other aerospace_workspace_change \
    --set space.other \
    background.height=32 \
    background.drawing=off \
    icon="󰛄" \
    label="other" \
    script="$PLUGIN_DIR/spaces.sh OTHER"

