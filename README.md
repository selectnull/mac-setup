
Install these manually:
* [brew](https://brew.sh/)
* [WezTerm](https://wezfurlong.org/wezterm/)
* [Google Chrome](https://www.google.com/chrome/)
* [KeePassXC](https://keepassxc.org/)


Manually change these System Preferences settings.

* Doc & Menu Bar
    * Enable "Automatically hide and show the Dock"
* Keyboard
    * Keyboard Tab
        * Set "Key Repeat" to Fast
        * Set "Delay Until Repeat" to Short
        * Modifier Keys CapsLock to Control
* Trackpad
    * Point & Click
        * Enable "Tap to click"
        * Set "Tracking speed" to Fast
    * Scroll & Zoom
        * Disable "Scroll directorio: Natural"
* Accessibility
    * Pointer Control
        * Trackpad Options -> Enable dragging with three finger drag
* Security
    * General
        * Require password 5 seconds after sleep
    * FileVault
        * Turn On FileVault

Remap right option
------------------

`~/Library/LaunchAgents/com.selectnull.remap-keys.plist` file

Make Finder quit-able
---------------------

    defaults write com.apple.finder QuitMenuItem -bool true
    pkill Finder

That will add Quit menu item to Finder app and will make it quitable.
When needed, Finder can be started again and killed when not needed.
