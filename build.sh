#!/bin/bash

for i in \
	libgee \
	bubblewrap \
	libseccomp \
	gnome-desktop \
	graphene \
	geocode-glib \
	libgweather \
	geoclue2 \
	gnome-settings-daemon \
	pipewire \
	mutter \
	gnome-autoar \
	libgrss \
	tracker \
	tracker-miners \
	nautilus \
	gnome-menus \
	plank \
	granite \
	gala \
	; do 
cd $i || exit 1
./${i}.SlackBuild || exit 1
cd ..
done

