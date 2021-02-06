#!/usr/bin/env bash

WAIT=60 # seconds

# Run xidlehook
xidlehook-bin \
  --not-when-fullscreen \
  --not-when-audio \
  --timer $WAIT \
    "xrandr --listactivemonitors | tail --lines=+2 | grep -oE '[^ ]+$' | xargs -I {} xrandr --output '{}' --brightness .4" \
    "xrandr --listactivemonitors | tail --lines=+2 | grep -oE '[^ ]+$' | xargs -I {} xrandr --output '{}' --brightness 1" \
  --timer $WAIT \
    "xrandr --listactivemonitors | tail --lines=+2 | grep -oE '[^ ]+$' | xargs -I {} xrandr --output '{}' --brightness 1; ~/.config/i3/lock.sh" \
    "" \
  --timer $WAIT \
    'systemctl suspend' \
    ''