HOME_SSID='Death Star'
CURRENT_SSID=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk 'BEGIN { FS = ": " }; /[^B]SSID/ { print $2 }'`

if [ "$CURRENT_SSID" = "$HOME_SSID" ]; then
  PASS_ON_WAKE='false'
else
  PASS_ON_WAKE='true'
fi

osascript -e 'tell application "System Events"' -e 'tell security preferences' -e "set require password to wake to $PASS_ON_WAKE" -e 'end tell' -e 'end tell'
