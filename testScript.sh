#! /bin/bash
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

# Make trackpad faster
defaults write -g com.apple.trackpad.scaling 2

#Enable press and hold
defaults write -g ApplePressAndHoldEnabled -bool true

#Tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Remove duplicates in the “Open With” menu (also see `lscleanup` alias)
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Use scroll gesture with the Ctrl (^) modifier key to zoom
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

defaults write NSGlobalDomain AppleLanguages -array "en"
defaults write NSGlobalDomain AppleLocale -string "en_GB@currency=GBP”
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Follow the keyboard focus while zoomed in
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

# Show language menu in the top right corner of the boot screen
sudo defaults write /Library/Preferences/com.apple.loginwindow showInputMenu -bool false

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Disable the annoying line marks in terminal
defaults write com.apple.Terminal ShowLineMarks -int 0

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Display percentage battery
defaults write com.apple.menuextra.battery " =     {
>         ShowPercent -bool true;

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

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
  'homebrew/cask'
  'homebrew/cask-versions'
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
  'visual-studio-code'
  'node'
  'sublime-text'
  'macdown'
  'postman'
  'the-unarchiver'
  'slack'
  'skala-preview'
  'google-backup-and-sync'
  'google-chrome'
  'microsoft-office'
  'itsycal'
  'mendeley'
  'keepingyouawake'
  'disk-inventory-x'
  'teamviewer'
  'tunnelblick'
  'transmission'
  'vlc'
  'nordvpn'
  'calibre'
  'spotify'
  'duti'
  '1password'
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
