# software.sh
# Install brew, Procursus, utilities, and apps

# brew install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew upgrade

# Procursus install
curl -LO https://cameronkatri.com/zstd
curl -LO https://cdn.discordapp.com/attachments/763074782220517467/819588605999317022/bootstrap.tar.zst
chmod +x zstd
./zstd -d bootstrap.tar.zst
sudo tar -xpkf bootstrap.tar -C /
sudo apt update
sudo apt full-upgrade
rm zstd bootstrap.tar.zst

# Install utilities and apps
brew install python@3.10 ansible pinetry-mac lsusb starship robotsandpencils/made/xcodes
sudo apt install nmap sileo tmate clang dsymutil odcctools text-cmds autoconf automake autopoint \
    bash bison cmake curl docbook-xml docbook-xsl fakeroot findutils flex gawk git gnupg groff gzip ldid \
    libtool make ncurses-bin openssl patch pkg-config po4a python3 sed tar triehash xz-utils zstd wget \
    libimobiledevice-utils libirecovery-utils yt-dlp aria2 rsync -y
brew install --cask 1password affinity-designer authy bettertouchtool checkra1n docker dropbox eloston-chromium \
    figma futurerestore-gui icons8 ios-app-signer lastfm manymc microsoft-remote-desktop mobirise raycast \
    sf-symbols tabby telegram tor-browser universal-android-debloater vscodium gpg-suite-no-mail shottr
xcodes install --latest --experimental-unxip

# Install theos
git clone --recursive https://github.com/theos/theos.git $THEOS
curl -LO https://github.com/theos/sdks/archive/master.zip
TMP=$(mktemp -d)
unzip master.zip -d $TMP
mv $TMP/sdks-master/*.sdk $THEOS/sdks
rm -r master.zip $TMP

# Configurations
echo "pinentry-program pinentry-program $BREW_HOME/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf