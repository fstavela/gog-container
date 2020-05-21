FROM ubuntu:latest
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get dist-upgrade
RUN apt-get install -y 	libc6:i386 \
			libasound2:i386 \
			libasound2-data:i386 \
			libasound2-plugins:i386 \
			libstdc++6:i386 \
			libx11-6:i386 \
			libxcb1:i386 \
			libxcursor1:i386 \
			libxrandr2:i386 \
			libglu1:i386 \
			libsdl2-2.0:i386
RUN useradd -ms /bin/bash gamer
USER gamer
WORKDIR /home/gamer/
