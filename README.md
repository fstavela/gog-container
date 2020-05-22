# gog-container
This repository contains useful files, scripts and documentation for running GOG games in Ubuntu container


## Requirements
I have tested this project only on Fedora, but it should work on most modern linux distros that use GNOME desktop environment.

All you need for this to run is to have docker installed. You can learn how to install docker here: https://docs.docker.com/engine/install/

After installing docker, you should create a new group called `docker` and add your user account to this group, so you won't have to run docker with `sudo` every time. You should also configure docker to start on boot. You can learn how to do all of that here: https://docs.docker.com/engine/install/linux-postinstall/


## How to install
First you have to install your games. Just use the GOG installator, but remember to uncheck the "Create a desktop shortcut" and "Create a menu item" fields. We will create our own shortcuts later. As a destination I used `/home/$USER/games/gog-games/GAME_NAME` folder, but you can use whatever folder you want, you will just need to make some tweaks in the installer file.

### Create a docker image
Navigate to the folder where `Dockerfile` is located and run this command:
```bash
docker build --network=host --tag gog:1.0 .
```

### Run installer.sh
For now the installer will only help you with setting up Airline Tycoon Deluxe, but I plan to extend it with more games in the future. First, make sure that you have execution rights for the file:
```bash
chmod 744 installer.sh
```
Then you can run the installer:
```bash
./installer.sh
```

### Play your game
After that you should be able to simply run your game from terminal. For example, run this command to start Airline Tycoon Deluxe:
```bash
airline-tycoon
```
And you should also see a new item in your applications menu with the name of the game and a nice icon. You should be able to start the game just by clicking on that icon.
