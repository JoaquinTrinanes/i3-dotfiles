#!/bin/bash
ICON=/home/joaquin/.i3/icon.png
TMPBG=/tmp/screen.png
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Pause
scrot /tmp/screen.png
convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -i $TMPBG
rm $TMPBG
