HOME_SSID='Death Star'
CURRENT_SSID=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk 'BEGIN { FS = ": " }; /[^B]SSID/ { print $2 }'`

if [ "$CURRENT_SSID" = "$HOME_SSID" ]; then
  PASS_ON_WAKE='0'
else
  PASS_ON_WAKE='1'
fi

defaults write com.apple.screensaver askForPassword -int $PASS_ON_WAKE
