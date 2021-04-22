# Wallpaper Changer
A simple prank script that changes your, or your friend's wallpaper to an image of your choice.

## Setup
This script is made for MacOS, so if you want this script to work on windows, you will have to change parts of this file on your own.

On the second line, after the shebang and while loop, you will find a variable. Change the variable to the path of your desired wallpaper image.

```bash
#!/bin/bash


# ↓↓ CHANGE to the full path of your desired wallpaper ↓↓
desiredWallpaper="complete/path/to/file.jpg"
```
The script will handle the rest ;)

## Automator Setup (Optional)
On MacOS you can use Automator to run this script indefinitely.

> Step 1: Open Automator and create a new application

> Step 2: Drag and drop the "Run Shell Script" block onto the timeline

> Step 3: Insert the following text into the block: "/Users/YOUR_USER_NAME/Documents/wallpaper-script/wallpaper.bash long-running-process &>/dev/null &

> Step 4: Drag and drop a "Loop" block onto the timeline

> Step 5: Open System Preferences > Users & Groups > Login Items and add your Automator application

Note: if you want to disable the wallpaper changer, remove the application from your Login Items.
