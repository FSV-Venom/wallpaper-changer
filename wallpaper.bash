#!/bin/bash

while true; do

# ↓↓ CHANGE to the full path of your desired wallpaper ↓↓
desiredWallpaper="/Users/johnbradford/Desktop/wallpaper.jpg"


# Find the path of the active wallpaper
activeWallpaper="$(osascript -e 'tell application "System Events" to tell first Desktop to get its picture')"


# Output paths of both variables in the terminal
echo $desiredWallpaper
echo $activeWallpaper


# Find if the active wallpaper is different than the desired wallpaper
if [ "$activeWallpaper" != "$desiredWallpaper" ]
then

echo "Changing wallpaper..."

# Change the wallpaper to the desired wallpaper
osascript << EOF
    tell application "Finder"
    set desktop picture to POSIX file "$desiredWallpaper"
    end tell
EOF

fi

# Repeat the process in one minute
sleep 60
done
