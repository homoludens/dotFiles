xrdb -merge ~/.Xdefaults
xmodmap .Xmodmap
#conky -c ~/.conkyrc-cli | exec dwm
#exec xmonad
#startkde
#amazing &
#awesome
#exec wmii

export XDG_DATA_DIRS=/usr/share:/usr/kde/4.2/share:/usr/local/share:/usr/kde/3.5/share
export XDG_MENU_PREFIX=kde-4.2-

FG='grey70' 
BG='#2c2c32' 
FONT='-*-terminus-*-*-*-*-12-*-*-*-*-*-*'

#xmonad-acpi | dzen2 -e '' -x 600 -w 768 -ta r -fg $FG -bg $BG -fn $FONT &
#xmonad-acpi | conky &
xmonad &
xloadimage -onroot /home/homoludens/Desktop/slike/ponny.png

wait $!
pkill -HUP dzen2
pkill -HUP -f xmonad-acpi
wait 
