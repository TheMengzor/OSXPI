#!/bin/bash

echo "Welcome to OSX Post Install"


read -p "Install HomeBrew? (Y/n): " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo "Installing HomeBrew..."
	ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
	echo "Running brew doctor..."
	brew doctor

	read -p "Install Midnight Commander? (Y/n): " -n 1 -r
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		echo "Installing Midnight Commander..."
		brew install mc
	fi

	read -p "Install Midnight Commander? (Y/n): " -n 1 -r
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		echo "Installing Midnight Commander..."
		brew install mc
	fi

	read -p "Install wget? (Y/n): " -n 1 -r
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		echo "Installing wget..."
		brew install wget
	fi

	read -p "Install HomeBrew Cask? (Y/n): " -n 1 -r
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		echo "Installing HomeBrew Cask..."
		brew tap phinze/cask
		brew install brew-cask

		read -p "Install Qicklook Plugins? (Y/n): " -n 1 -r
		if [[ $REPLY =~ ^[Yy]$ ]]
		then
			echo "Installing Quicklook plugins..."
			brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package
		fi

		read -p "Install Google Chrome? (Y/n): " -n 1 -r
		if [[ $REPLY =~ ^[Yy]$ ]]
		then
			echo "Installing Google Chrome..."
			brew cask install google-chrome
		fi

		read -p "Install Adobe Creative Cloud? (Y/n): " -n 1 -r
		if [[ $REPLY =~ ^[Yy]$ ]]
		then
			echo "Installing Adobe Creative Cloud..."
			brew cask install adobe-creative-cloud
		fi

		read -p "Install Android Studio Bundle? (Y/n): " -n 1 -r
		if [[ $REPLY =~ ^[Yy]$ ]]
		then
			echo "Installing Android Studio Bundle..."
			brew cask install android-studio-bundle
		fi

		read -p "Install Transmission? (Y/n): " -n 1 -r
		if [[ $REPLY =~ ^[Yy]$ ]]
		then
			echo "Installing Transmission..."
			brew cask install transmission
		fi
	fi
fi


read -p "Install HomeBrew? (Y/n): " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	
fi