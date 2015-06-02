SSID='Death Star'
HOME=`ioreg -rn en0 | fgrep -e "$SSID"`

if [ "$HOME" ]; then
  SECURE='false'
else
  SECURE='true'
fi

osascript -e 'tell application "System Events"' -e 'tell security preferences' -e "set require password to wake to $SECURE" -e 'end tell' -e 'end tell'
