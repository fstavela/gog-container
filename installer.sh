#!/bin/bash
GOG_GAMES_DIR=/home/$USER/games/gog_container

echo Installing Airline Tycoon Deluxe...
mkdir $GOG_GAMES_DIR/.AirlineTycoonDeluxe
touch $GOG_GAMES_DIR/.AirlineTycoonDeluxeconfig.ini
echo Created files and folders in $GOG_GAMES_DIR for ATE to run properly
cat aliases/airline-tycoon >> /home/$USER/.bashrc
echo Appended content of aliases/airline-tycoon into /home/$USER/.bashrc to create command line alias
source /home/$USER/.bashrc
cp desktop_icons/airline-tycoon.desktop /home/$USER/.local/share/applications
sed -i "s/USER/$USER/" /home/$USER/.local/share/applications/airline-tycoon.desktop
echo Copied desktop_icons/airline-tycoon.desktop to /home/$USER/.local/share/applications/airline-tycoon.desktop to create desktop menu entry
echo Airline Tycoon Deluxe successfully installed
