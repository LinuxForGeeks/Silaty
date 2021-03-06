#!/bin/bash

sh appimage-appdir.sh

appimage-builder --skip-test --skip-appimage

gdk-pixbuf-query-loaders > AppDir/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/2.10.0/loaders.cache

# For test purpose
#AppDir/AppRun

appimage-builder --skip-test --skip-build
