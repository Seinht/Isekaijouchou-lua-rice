#!/bin/bash

if pgrep -x "wf-recorder" >/dev/null; then
  pkill -SIGINT wf-recorder
  notify-send "Screen Recorder" "Recording stopped."
else
  notify-send "Screen Recorder" "Recording started."
  TARGET_AUDIO=$(pactl get-default-sink).monitor
  wf-recorder -o HDMI-A-1 -a "$TARGET_AUDIO" -f "$HOME/Videos/Recording_$(date +%Y-%m-%d_%H-%M-%S).mp4"
fi
