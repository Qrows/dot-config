#!/usr/bin/env bash
# vim:ft=bash

icon="$HOME/.config/i3lock/i3icon.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

maim "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -i "$tmpbg" 
