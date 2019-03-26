# Things I want on a fresh install of OS X
---

Once in a while I like to create a clean install on my Mac. This is a list of all the software that I have on my clean image.

### Development Tools:
1. [**Visual Studio Code**](https://code.visualstudio.com/) - Very powerful IDE for webdev and pretty much anything
1. [**Git**](https://git-scm.com/download/mac) - Preferred source control
1. [**Node**](https://nodejs.org/en/download/) - A must have for webdev
1. [**Sublime Text 3**](https://www.sublimetext.com/3) - Great text editor
1. [**Parallels Desktop**](https://www.parallels.com/uk/) - Parallelisation for MacOS
1. **Windows 10 LTSB** - Long Term Service Branch with no bloatware
1. [**Visual Studio 2017**](https://visualstudio.microsoft.com/downloads/) - A must have for .NET devs
1. [**Dash**](https://kapeli.com/dash) - Documentation for pretty much everything
1. [**Tower**](https://www.git-tower.com/mac) - Great way to visualise the git tree
1. [**MacDown**](https://macdown.uranusjr.com/) - Top notch markdown editor
1. [**Postman**](https://www.getpostman.com/downloads/) - A must have if you're working with APIs
1. [**Slack**](https://slack.com/downloads/mac) - My preferred platform for communicating with other devs
1. [**ForkLift**](https://binarynights.com/) - Best FTP client by benchmarks

### Design Tools:
1. [**Skala Preview**](https://bjango.com/mac/skalapreview/) - Send live Photoshop renders to iOS devices
1. [**Photoshop CS6**](https://www.adobe.com/uk/products/photoshopfamily.html) - The best image editing tool
1. [**Vector Magic**](https://vectormagic.com/desktop) - Great for a quick drag and drop vectorisation
1. [**Adobe XD**](https://www.adobe.com/uk/products/xd.html) - Mockup App with a very quick learning curve


### Productivity:
1. [**Google Drive**](https://www.google.co.uk/drive/download/) - Great for cloud storage
1. [**iCloud Drive**](https://www.icloud.com)
1. [**Google Chrome**](https://www.google.com/chrome/)- Preferred web browser
1. [**Microsoft Word**](https://products.office.com/en-gb/mac) - Word processor
1. [**Microsoft Excel**](https://products.office.com/en-gb/mac) - Table processor
1. [**Paste**](https://pasteapp.me/) - Without a doubt my favourite productivity tool. Saves all things copied to the clipboard.
1. [**Itsycal**](https://www.mowglii.com/itsycal/) - Awesome macOS toolbar utility that displays date and time in the toolbar. On click shows a mini calendar. "HH:mm E d MMM" <-- my display preferences.
1. [**Mendeley**](https://www.mendeley.com/download-desktop/) - Hands down the best citation software, with top notch integration with Word.
1. [**Amphetamine**](https://itunes.apple.com/gb/app/amphetamine/id937984704?mt=12) - Stops mac from sleeping. More powerful features include keep awake based on a given app.

### Other Utilities:
1. [**DiskInventoryX**](http://www.derlien.com/) - Visualise the space on your mac
1. [**CleanMyMac**](https://macpaw.com/cleanmymac)- Great for clearing out caches, unnecessary system files etc.
1. [**TeamViewer**](https://www.teamviewer.com/en/) - For when your parents need remote support...
1. [**TunnelBlick**](https://tunnelblick.net/) - A must have OpenVPN client
1. [**Transmission**](https://transmissionbt.com/) - Fantastic lightweight torrent client
1. [**VLC**](https://www.videolan.org/vlc/download-macosx.en-GB.html) - Without a doubt the best MacOS media player
1. [**Unsplash**](https://unsplash.com/wallpaper/1339119/mac-wallpapers) - Some fantastic images for the desktop. New every morning
1. [**NordVPN**](https://nordvpn.com/) - Good for unblocking sites around the world
1. [**Calibre**](https://calibre-ebook.com/download_osx) - Top notch eBook management software. Great for loading books onto Kindle.
1. [**WiFi Spoof**](https://wifispoof.com/) - Good for those paid WiFi hotspots that give you 15 mins free.
1. [**Spotify**](https://www.spotify.com/uk/download/mac/) - Favourite music streaming app.
1. [**CarbonCopyCloner**](https://bombich.com/) - Great for creating an exact clone of my desktop.


# Removal of Native MacOS Applications
---
I also have a habit of removing native applications that I don't use. This is probably overkill, but I like my OS to be sparkly clean when I start using it. These

### Native Apps I Remove:
1. Chess
2. Books
3. Siri
4. Dashboard
5. iTunes
6. Maps
7. Pages
8. GarageBand
9. TextEdit
10. Reminders
11. QuickTime
12. Photobooth
13. Safari


# Chrome Addons
---
These chrome addons massively improve my productivity and provide me with useful information when browsing the web:

1. [**The Great Suspender**](https://chrome.google.com/webstore/detail/the-great-suspender/klbibkeccnjlkjkiokjodocebajanakg) - This suspends any tabs inactive for more than 5 mins. Great for reducing Chrome's memory overhead
1. [**JSON Formatter**](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa) - Great for formatting JSON in browser
1. [**Speedtest by Ookla**](https://chrome.google.com/webstore/detail/speedtest-by-ookla/pgjjikdiikihdfpoppgaidccahalehjh) - Favourite speedtest tool
1. [**Wappalyzer**](https://chrome.google.com/webstore/detail/wappalyzer/gppongmhjkpfnbhagpmjfkannfbllamg) - Identify the stack used by websites
1. [**uBlock Origin**](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm) & [**Extra**](https://chrome.google.com/webstore/detail/ublock-origin-extra/pgdnlhfefecpicbbihgmbmffkjpaplco) - Best in class adblocking addon
1. [**Mendeley Importer**](https://chrome.google.com/webstore/detail/mendeley-importer/dagcmkpagjlhakfdhnbomgmjdpkdklff) - Great for importing citation of websites/papers 


# VSCode settings & Addons
---
[VSCode Sync](http://shanalikhan.github.io/2015/12/15/Visual-Studio-Code-Sync-Settings.html)


# Scripts
---
```sh
#! /bin/bash
## Declaring all user variables first so I can go and get a coffee
echo "Enter your preferred GIT name"
read gitglobaluser
echo "Enter your preferred GIT email"
read gitglobalemail
echo "Type your GitHub username and press enter"
read GHUSER

# Install apps from anywhere
sudo spctl --master-disable

# Setting the natural scroll direction to false
defaults write -g com.apple.swipescrolldirection -bool NO

# Display battery percentage in menu bar
defaults write com.apple.menuextra.battery ShowPercent YES

# Remove notification Center menu bar icon
# launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist
# killall NotificationCenter
#

# Display Day, Date & Time
defaults write com.apple.menuextra.clock "DateFormat" 'HH:mm E d MMM'
killall -KILL SystemUIServer

# Setting the key repeat speed higher than default
defaults write -g InitialKeyRepeat -int 12

## Set mouse speed
defaults write -g com.apple.mouse.scaling  4

# Show Hard Drives & removeable media on Desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
killall -HUP Finder

## Installing xCode Tools
xcode-select --install

## Installing Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Add Homebrew repos & update
declare -a taps=(
  'buo/cask-upgrade'
  'caskroom/cask'
  'caskroom/versions'
  'homebrew/bundle'
  'homebrew/core'
)

for tap in "${taps[@]}"; do
  brew tap "$tap"
done

brew upgrade && brew update

## Installing Cask
brew install cask

## Deep fetch of all Casks on homebrew core
git -C "$(brew --repo homebrew/core)" fetch --unshallow


declare -a apps=(
  ‘visual-studio-code’
  ‘node’
  ‘sublime-text’
  ‘macdown’
  ‘postman’
  ‘the-unarchiver’
  ‘slack’
  ‘skala-preview’
  ‘google-backup-and-sync’
  ‘google-chrome’
  ‘microsoft-office’
  ‘itsycal’
  ‘mendeley’
  ‘keepingyouawake’
  ‘disk-inventory-x’
  ‘teamviewer’
  ‘tunnelblick’
  ‘transmission’
  ‘vlc’
  ‘nordvpn’
  ‘calibre’
  ‘spotify’
  ‘duti’
  ‘1password’
)

for app in "${apps[@]}"; do
  brew cask install "$app"
done

## Installing GIT
brew install git

## Configuring GIT
git config --global user.name "$gitglobaluser"
git config --global user.email "$gitglobalemail"
git config --global core.editor "code --wait"
git config --global -e
git config --global color.ui true

## Create a folder called GitHub Repos & clone of all my GitHub repos into it
cd ~ 
mkdir GitHub\ Repos
cd ~/GitHub\ Repos
curl "https://api.github.com/users/$GHUSER/repos?per_page=1000" | grep -o 'git@[^"]*' | xargs -L1 git clone |

## Set default apps
duti -s com.uranusjr.macdown .md all
duti -s com.macpaw.site.theunarchiver .rar all
duti -s com.macpaw.site.theunarchiver .tar all
duti -s com.microsoft.VSCode .js all
duti -s com.microsoft.VSCode .jsx all
duti -s com.microsoft.VSCode .tsx all
duti -s com.microsoft.VSCode .html all
duti -s com.microsoft.VSCode .css all
duti -s org.videolan.vlc .mp4 all
duti -s org.videolan.vlc .m4v all
duti -s org.videolan.vlc .avi all
duti -s org.videolan.vlc .wmv all
duti -s org.videolan.vlc .mov all
duti -s org.videolan.vlc .mp3 all
duti -s org.videolan.vlc .aac all
duti -s com.sublimetext.3 .txt all
```