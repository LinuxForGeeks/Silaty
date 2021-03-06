#!/bin/bash

mkdir -p AppDir/usr/share/silaty
mkdir -p AppDir/usr/share/icons/hicolor/scalable/apps/
mkdir -p AppDir/usr/share/icons/hicolor/128x128/apps/
mkdir -p AppDir/usr/share/icons/hicolor/48x48/apps/
mkdir -p AppDir/usr/share/icons/hicolor/24x24/apps/
mkdir -p AppDir/usr/share/applications
mkdir -p AppDir/etc/xdg/autostart
mkdir -p AppDir/usr/local/bin
cp -R icons AppDir/usr/share/silaty/
cp -R audio AppDir/usr/share/silaty/
cp -R data AppDir/usr/share/silaty/

cp icons/hicolor/128x128/apps/silaty.svg AppDir/usr/share/icons/hicolor/scalable/apps/
cp icons/hicolor/128x128/apps/silaty.png AppDir/usr/share/icons/hicolor/scalable/apps/
cp icons/hicolor/128x128/apps/silaty.svg AppDir/usr/share/icons/
cp icons/hicolor/128x128/apps/silaty.png AppDir/usr/share/icons/
chmod 644 AppDir/usr/share/icons/hicolor/scalable/apps/silaty.svg

cp icons/hicolor/128x128/apps/silaty.svg AppDir/usr/share/icons/hicolor/128x128/apps/
chmod 644 AppDir/usr/share/icons/hicolor/128x128/apps/silaty.svg

cp icons/hicolor/48x48/apps/silaty.svg AppDir/usr/share/icons/hicolor/48x48/apps/
chmod 644 AppDir/usr/share/icons/hicolor/48x48/apps/silaty.svg

cp icons/hicolor/24x24/apps/silaty.svg AppDir/usr/share/icons/hicolor/24x24/apps/
chmod 644 AppDir/usr/share/icons/hicolor/24x24/apps/silaty.svg

cp *.py AppDir/usr/share/silaty/
chmod 755 -R AppDir/usr/share/silaty/

cp silaty.desktop AppDir/etc/xdg/autostart/
chmod 755 AppDir/etc/xdg/autostart/silaty.desktop

cp silaty.desktop AppDir/usr/share/applications/
chmod 755 AppDir/usr/share/applications/silaty.desktop

ln -sf /usr/share/silaty/silaty-indicator.py AppDir/usr/local/bin/silaty-indicator
#chmod 755 AppDir/usr/local/bin/silaty-indicator
