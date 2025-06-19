#!/bin/bash

# $1      → the identifier we passed in the bar-item line (e.g. C, B, W, T or OTHER)
# $NAME   → the SketchyBar item name (e.g. space.C, space.other …)
# $FOCUSED_WORKSPACE → current Aerospace workspace label (e.g. C, B … or 1-10)

source "$CONFIG_DIR/colors.sh"

# helper: true if the current workspace is a number from 1-10
is_numeric_space() {
    [[ "$FOCUSED_WORKSPACE" =~ ^([1-9]|10)$ ]]
}

highlight_item() {
    sketchybar --set "$NAME" \
        background.drawing=on \
        background.color="$ACCENT_COLOR" \
        icon.color="$ACTIVE_ITEM_COLOR" \
        label.color="$ACTIVE_ITEM_COLOR"
}

unhighlight_item() {
    sketchybar --set "$NAME" \
        background.drawing=off \
        icon.color="$ITEM_COLOR" \
        label.color="$ITEM_COLOR"
}

case "$1" in
  # Named workspaces (C, W, B, T …)
  C|B|W|T)
    if [[ "$1" == "$FOCUSED_WORKSPACE" ]]; then
      highlight_item
    else
      unhighlight_item
    fi
    ;;

  # “OTHER” slot: light up whenever we sit on a numeric space 1-10
  OTHER)
    if is_numeric_space; then
      sketchybar --set "$NAME" label="other ($FOCUSED_WORKSPACE)"
      highlight_item
    else
      sketchybar --set "$NAME" label="other"
      unhighlight_item
    fi
    ;;
esac
