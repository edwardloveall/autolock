This script checks every five minutes (configurable) to see if you're on a specified safe network, such as your home network.
If you are, it disables the "Require password X seconds after sleep or screensaver begins" preference on a Mac.
If it can't find that network, it enables that lock preference.

In practice, this means your computer will require a password when you're out and about, but not force you to enter your password over and over again at home.

## Installation

* Download the latest files from [here](https://github.com/edwardloveall/autolock/releases).
* Put `autolock.sh` anywhere you like, but remember where you put it.
* Inside `autolock.sh`, replace `Death Star` on the first line with the SSID (name) of your home network.
  * Alternatively, change your network name to `Death Star`.
* In `com.edwardloveall.autolock.plist`, replace the `path/to/autolock.sh` with the path to the script in the previous step.
* Move the launchd plist to `~/Library/LaunchAgents`. If you don't have the `LaunchAgents` folder, you can just create it. Spelling and capitalization are important.
* Install and start the launchd job with `launchctl load -w ~/Library/LaunchAgents/com.edwardloveall.autolock.plist`

---

Read more about this in my blog post: http://blog.edwardloveall.com/post/120467537407/automatically-lock-your-computer-based-on-wi-fi
