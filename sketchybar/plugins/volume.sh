#!/bin/sh

# The volume_change event supplies a $INFO variable in which the current volume
# percentage is passed to the script.

if [ "$SENDER" = "volume_change" ]; then
  VOLUME="$INFO"

  # case "$VOLUME" in
  #   [6-9][0-9]|100) ICON="󰕾"
  #   ;;
  #   [3-5][0-9]) ICON="󰖀"
  #   ;;
  #   [1-9]|[1-2][0-9]) ICON="󰕿"
  #   ;;
  #   *) ICON="󰖁"
  # esac


  case "$VOLUME" in
    100)
      ICON="󰕾"
      BAR="[======]"
    ;;
    [7-9][0-9])
      ICON="󰕾"
      BAR="[===== ]"
    ;;
    [6-7][0-9])
      ICON="󰕾"
      BAR="[====  ]"
    ;;
    [3-5][0-9])
      BAR="[===   ]"
      ICON="󰖀"
    ;;
    [1-2][0-9])
      BAR="[==    ]"
      ICON="󰕿"
    ;;
    [1-9])
      BAR="[=     ]"
      ICON="󰕿"
    ;;
    *)
      BAR="[      ]"
      ICON="󰖁"
  esac

  sketchybar --set "$NAME" icon="$ICON" label="$BAR"
fi
