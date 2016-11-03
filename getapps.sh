#!/bin/bash

mkdir ~/getmacapps_temp
cd ~/getmacapps_temp

# Installing Chrome
curl -L -O "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
hdiutil mount -nobrowse googlechrome.dmg
cp -R "/Volumes/Google Chrome/Google Chrome.app" /Applications
hdiutil unmount "/Volumes/Google Chrome"
rm googlechrome.dmg

# Installing Firefox
curl -L -o Firefox.dmg "http://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US"
hdiutil mount -nobrowse Firefox.dmg
cp -R "/Volumes/Firefox/Firefox.app" /Applications
hdiutil unmount "/Volumes/Firefox"
rm Firefox.dmg

# Installing Handbrake
curl -L -o HandBrake.dmg "http://handbrake.fr/rotation.php?file=HandBrake-0.10.5-MacOSX.6_GUI_x86_64.dmg"
hdiutil mount -nobrowse HandBrake.dmg -mountpoint /Volumes/HandBrake
cp -R "/Volumes/HandBrake/HandBrake.app" /Applications
hdiutil unmount "/Volumes/HandBrake"
rm HandBrake.dmg

# Installing Spotify
curl -L -O "http://download.spotify.com/Spotify.dmg"
hdiutil mount -nobrowse Spotify.dmg
cp -R "/Volumes/Spotify/Spotify.app" /Applications
hdiutil unmount "/Volumes/Spotify"
rm Spotify.dmg

# Installing VLC Player
curl -L -o vlc.dmg "http://get.videolan.org/vlc/2.2.2/macosx/vlc-2.2.2.dmg"
hdiutil mount -nobrowse vlc.dmg -mountpoint /Volumes/vlc
cp -R "/Volumes/vlc/VLC.app" /Applications
hdiutil unmount "/Volumes/vlc"
rm vlc.dmg

# Installing Transmission
curl -L -o Transmission.dmg "https://transmission.cachefly.net/Transmission-2.84.dmg"
hdiutil mount -nobrowse Transmission.dmg
cp -R "/Volumes/Transmission/Transmission.app" /Applications
hdiutil unmount "/Volumes/Transmission"
rm Transmission.dmg

# Installing Skype
curl -L -O "http://www.skype.com/go/getskype-macosx.dmg"
hdiutil mount -nobrowse getskype-macosx.dmg
cp -R "/Volumes/Skype/Skype.app" /Applications
hdiutil unmount "/Volumes/Skype"
rm getskype-macosx.dmg

# Installing Dropbox
curl -L -o Dropbox.dmg "https://www.dropbox.com/download?plat=mac"
hdiutil mount -nobrowse Dropbox.dmg
cp -R "/Volumes/Dropbox Installer/Dropbox.app" /Applications
hdiutil unmount "/Volumes/Dropbox Installer"
rm Dropbox.dmg

# Installing Google Drive
curl -L -O "https://dl-ssl.google.com/drive/installgoogledrive.dmg"
hdiutil mount -nobrowse installgoogledrive.dmg
cp -R "/Volumes/Install Google Drive/Google Drive.app" /Applications
hdiutil unmount "/Volumes/Install Google Drive"
rm installgoogledrive.dmg

# Installing caffeine
curl -L -o Caffeine.zip "http://download.lightheadsw.com/download.php?software=caffeine"
unzip Caffeine.zip
mv Caffeine.app /Applications
rm Caffeine.zip

# Installing Sublime Text 3 Beta
curl -L -o "Sublime Text 3.dmg" "https://download.sublimetext.com/Sublime%20Text%20Build%203103.dmg"
hdiutil mount -nobrowse "Sublime Text 3.dmg"
cp -R "/Volumes/Sublime Text/Sublime Text.app" /Applications
hdiutil unmount "/Volumes/Sublime Text/Sublime Text.app"
rm "Sublime Text 3.dmg"

# Installing iterm2
curl -L -o iTerm2.zip "https://iterm2.com/downloads/stable/iTerm2-2_1_4.zip"
unzip iTerm2.zip
mv iTerm.app /Applications
rm iTerm2.zip

# Installing Sequel Pro
curl -L -o sequel-pro.dmg "https://github.com/sequelpro/sequelpro/releases/download/1.1.0.1/sequel-pro-1.1.0.1.dmg"
hdiutil mount -nobrowse sequel-pro.dmg
cp -R "/Volumes/Sequel Pro 1.1.0.1/Sequel Pro.app" /Applications
hdiutil unmount "/Volumes/Sequel Pro 1.1.0.1"
rm sequel-pro.dmg

# Installing Source Tree
curl -L -o SourceTree.dmg "http://downloads.atlassian.com/software/sourcetree/SourceTree_2.2.dmg"
hdiutil mount -nobrowse SourceTree.dmg
cp -R "/Volumes/SourceTree/SourceTree.app" /Applications
hdiutil unmount "/Volumes/SourceTree"
rm SourceTree.dmg

# Installing FileZilla
curl -L -o Filezilla.app.tar.bz2 "http://sourceforge.net/projects/filezilla/files/FileZilla_Client/3.15.0.2/FileZilla_3.15.0.2_macosx-x86.app.tar.bz2"
tar -zxvf Filezilla.app.tar.bz2
mv FileZilla.app /Applications
rm Filezilla.app.tar.bz2

# Installing flux
curl -L -O "https://justgetflux.com/mac/Flux.zip"
unzip Flux.zip
mv Flux.app /Applications
rm Flux.zip

# Installing Steam
curl -L -O "http://media.steampowered.com/client/installer/steam.dmg"
yes | hdiutil mount -nobrowse steam.dmg -nobrowse > /dev/null
cp -R "/Volumes/Steam/Steam.app" /Applications
hdiutil unmount "/Volumes/Steam"
rm steam.dmg

# Installing Coconut Battery
curl -L -o coconutBattery.zip "http://coconut-flavour.com/downloads/coconutBattery_3_2_1.zip"
unzip coconutBattery.zip
mv "coconutBattery.app" /Applications
rm coconutBattery.zip

# Installing Gimp
curl -L -o gimp.dmg "https://download.gimp.org/mirror/pub/gimp/v2.8/osx/gimp-2.8.16-x86_64.dmg"
hdiutil mount -nobrowse gimp.dmg
cp -R "/Volumes/Gimp 2.8.16/GIMP.app" /Applications
hdiutil unmount "/Volumes/Gimp 2.8.16"
rm gimp.dmg

# Installing Carbon Copy Cloner
curl -L -o ccc.zip "https://bombich.com/software/download_ccc.php" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36"
unzip ccc.zip
mv "Carbon Copy Cloner.app" /Applications
rm ccc.zip

# Installing KeePassX
# Install KeePassX
curl -L -o KeepassX.dmg "https://www.keepassx.org/releases/2.0.2/KeePassX-2.0.2.dmg"
hdiutil mount -nobrowse KeepassX.dmg -mountpoint /Volumes/KeepassX/
cp -R "/Volumes/KeepassX/KeePassX.app" /Applications
hdiutil unmount "/Volumes/KeepassX"
rm KeepassX.dmg

# Installing Kodi
curl -L -o kodi.dmg "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-15.2-Isengard-x86_64.dmg"
hdiutil mount -nobrowse kodi.dmg
cp -R "/Volumes/Kodi/Kodi.app" /Applications
hdiutil unmount "/Volumes/Kodi"
rm kodi.dmg

