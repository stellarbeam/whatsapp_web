#!/bin/bash

echo Installing WhatsApp Web client...

DIR32=~/.local/share/icons/hicolor/32x32/apps/
DIR48=~/.local/share/icons/hicolor/48x48/apps/
DIR64=~/.local/share/icons/hicolor/64x64/apps/
DIR96=~/.local/share/icons/hicolor/96x96/apps/

DIR_BIN=~/.local/bin/
DIR_ENTRY=~/.local/share/applications/

echo Generating binary...
cython3 --embed -3 -o main.c main.py
INC_VERSION=$(ls /usr/include/ | grep --regexp=python3 | tail -n 1)
DIR_PY_INC=/usr/include/$INC_VERSION
gcc -Os -I $DIR_PY_INC -o assets/whatsapp main.c -l$INC_VERSION -lpthread -lm -lutil -ldl -no-pie

echo Copying icons...
mkdir -p $DIR32 && cp assets/icons/32x32/whatsapp.png $DIR32
mkdir -p $DIR48 && cp assets/icons/48x48/whatsapp.png $DIR48
mkdir -p $DIR64 && cp assets/icons/64x64/whatsapp.png $DIR64
mkdir -p $DIR96 && cp assets/icons/96x96/whatsapp.png $DIR96

sleep 1

echo Adding entry to app menu...
mkdir -p $DIR_BIN   && cp assets/whatsapp         $DIR_BIN
mkdir -p $DIR_ENTRY && cp assets/whatsapp.desktop $DIR_ENTRY

sleep 1

echo Installation Complete. You might need to restart your system for reflecting changes.


