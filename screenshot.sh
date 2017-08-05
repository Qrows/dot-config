#!/usr/bin/sh

FILENAME=$(date '+%Y-%m-%d-%H-%M')'-SCREENSHOT-'$(uuidgen -t)
maim -m 10 --format='png' > "$HOME/Immagini/$FILENAME.png"
