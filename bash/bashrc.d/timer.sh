# set an ad-hoc GUI timer
timer() {
  # Timer in seconds
  local time="$1"; shift
  local message="$1"; shift
  local icon_path="$HOME/.config/dunst/icons/alarm-clock.png"
  local title="TIMER"

  # Sleep time is in seconds
  # Disown the child process so we can close the window and still get long
  # running timer alerts
  (sleep "$time" && \
    (dunstify -u 2 -I "$icon_path" "$title" "$message") \
  ) &disown

  echo "Timer set for $time seconds."
}
