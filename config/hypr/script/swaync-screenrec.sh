#!/bin/bash

if pgrep -x "wf-recorder" >/dev/null; then
  pkill -SIGINT wf-recorder
  #pkill -SIGINT pw-record
  notify-send "Screen Recorder" "Recording stopped."
else
  notify-send "Screen Recorder" "Recording started."
  #TARGET_AUDIO=$(pactl get-default-sink).monitor
  wf-recorder -o HDMI-A-1 -f "$HOME/Videos/Recording_$(date +%Y-%m-%d_%H-%M-%S).mp4"

  # pw-record --target="$TARGET_AUDIO" "$HOME/Videos/Recording_Audio_$(date +%Y-%m-%d_%H-%M-%S).wav" &
fi
