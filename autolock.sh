HOME_SSID='Death Star'
CURRENT_SSID=`ioreg -rn en0 | fgrep -e "$HOME_SSID"`

if [ "$CURRENT_SSID" ]; then
  PASS_ON_WAKE='false'
else
  PASS_ON_WAKE='true'
fi

osascript -e 'tell application "System Events"' -e 'tell security preferences' -e "set require password to wake to $PASS_ON_WAKE" -e 'end tell' -e 'end tell'
