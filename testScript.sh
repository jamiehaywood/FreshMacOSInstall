#! /bin/bash
## Declaring all user variables first so I can go and get a coffee
echo "Enter your preferred GIT name"
read gitglobaluser
echo "Enter your preferred GIT email"
read gitglobalemail

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
## Set mouse speed
defaults write -g com.apple.mouse.scaling  10.0

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
echo "Type your GitHub username and press enter"
read GHUSER
curl "https://api.github.com/users/$GHUSER/repos?per_page=1000" | grep -o 'git@[^"]*' | xargs -L1 git clone |


