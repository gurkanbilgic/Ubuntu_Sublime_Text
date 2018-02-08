#!/bin/bash
#
#|-------------------------------------------------------|
#|                                                       |
#|   Kullanıcı oluşabilecek tüm sorunlarda sorumludur.   |
#|                                                       |
#| ------------------------------------------------------|

# Install the GPG key:
echo "Sublime Text için GPG key"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - -y

# Ensure apt is set up to work with https sources:
sudo apt-get install apt-transport-https -y

# Select the channel to use:
echo "Sublime Text Stable"
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# Update apt sources and install Sublime Text
echo "Güncelle ve Yükleme İşlemi Gerçekleştiriyor."
sudo apt-get update -y
sudo apt-get install sublime-text -y

echo "# Kurulum Tamamlandı."
