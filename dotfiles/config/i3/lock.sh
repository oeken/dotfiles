#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#00e676bb'  # default
T='#00e676bb'  # text
W='#E23344bb'  # wrong
V='#f0f0f0bb'  # verifying

i3lock \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
-t \
-i ~/Pictures/celonis-wallpaper.png \
--clock               \
--indicator           \
--timestr="%H:%M"  \
--datestr="%A, %m %Y" \
--keylayout 1         \

# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc