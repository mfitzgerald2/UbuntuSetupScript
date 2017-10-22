#!/bin/bash

echo This Setup Script for Ubuntu will remove all bloatware from the computer, make sure that some standard utilities are installed, and make sure Ubuntu is up to date. 
echo This script is being ran by $USER on $HOSTNAME.
echo This script will only work of the above user is a memer of the sudoers group.
read -p 'Type 1 if the user is a member of the sudoers group and you wish to continue' cont
if $cont == 1
then
    echo Continuing the Script!
    echo Currently Updating Packages and Repositories...
    sudo apt-get update
    sudo apt-get -y upgrade
    echo Currently Removing Bloatware...
    sudo apt-get remove -y account-plugin-aim account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-twitter account-plugin-windows-live account-plugin-yahoo aisleriot brltty colord deja-dup deja-dup-backend-gvfs duplicity empathy empathy-common evolution-data-server-online-accounts example-content firefox gnome-accessibility-themes gnome-contacts gnome-mahjongg gnome-mines gnome-orca gnome-screensaver gnome-sudoku gnome-video-effects gnomine landscape-common libreoffice-avmedia-backend-gstreamer libreoffice-base-core libreoffice-calc libreoffice-common libreoffice-core libreoffice-draw libreoffice-gnome libreoffice-gtk libreoffice-impress libreoffice-math libreoffice-ogltrans libreoffice-pdfimport libreoffice-presentation-minimizer libreoffice-style-galaxy libreoffice-style-human libreoffice-writer libsane libsane-common mcp-account-manager-uoa python3-uno rhythmbox rhythmbox-plugins rhythmbox-plugin-zeitgeist sane-utils shotwell shotwell-common telepathy-gabble telepathy-haze telepathy-idle telepathy-indicator telepathy-logger telepathy-mission-control-5 telepathy-salut thunderbird thunderbird-gnome-support totem totem-common totem-plugins unity-scope-audacious unity-scope-chromiumbookmarks unity-scope-clementine unity-scope-colourlovers unity-scope-devhelp unity-scope-firefoxbookmarks unity-scope-gdrive unity-scope-gmusicbrowser unity-scope-gourmet unity-scope-manpages unity-scope-musicstores unity-scope-musique unity-scope-openclipart unity-scope-texdoc unity-scope-tomboy unity-scope-video-remote unity-scope-virtualbox unity-scope-yelp unity-scope-zotero
    echo Currently making sure standard utilities like SSH are installed
    sudo apt-get install -y openssh-server
else
    echo Please run again once the current user is a sudoer. 
fi
