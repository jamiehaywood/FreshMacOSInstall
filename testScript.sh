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
  'jamiehaywood/software'
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
