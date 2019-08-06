#!/bin/bash

echo Installing WhatsApp Web client...

DIR32=~/.local/share/icons/hicolor/32x32/apps/
DIR48=~/.local/share/icons/hicolor/48x48/apps/
DIR64=~/.local/share/icons/hicolor/64x64/apps/
DIR96=~/.local/share/icons/hicolor/96x96/apps/

DIR_BIN=~/.local/bin/
DIR_ENTRY=~/.local/share/applications/

mkdir -p $DIR32 && cp assets/icons/32x32/whatsapp.png $DIR32
mkdir -p $DIR48 && cp assets/icons/48x48/whatsapp.png $DIR48
mkdir -p $DIR64 && cp assets/icons/64x64/whatsapp.png $DIR64
mkdir -p $DIR96 && cp assets/icons/96x96/whatsapp.png $DIR96

sleep 1

mkdir -p $DIR_BIN   && cp assets/whatsapp         $DIR_BIN
mkdir -p $DIR_ENTRY && cp assets/whatsapp.desktop $DIR_ENTRY

sleep 1

echo Installation Complete.