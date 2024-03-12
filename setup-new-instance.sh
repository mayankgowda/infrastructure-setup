#!/bin/sh

echo "Update Linux"
apt-get -qq update

echo "Install the very basics.."
apt -qq -y install vim curl wget jq python3-pip gnome-tweak-tool

echo "Install AV"
apt -qq -y install clamtk

echo "Install Git"
apt -qq -y install git-core
git config --global core.eol lf
git config --global core.autocrlf input

echo "Install 7zip"
apt -qq -y install p7zip-full

echo "Install JAVA"
apt -qq -y install default-jre
apt -qq -y install default-jdk

echo "Install MySQL Workbench"
apt -qq -y install mysql-workbench

echo "Install nodejs and npm"
apt -qq -y install nodejs npm

echo "Install Postgresql"
apt-get install postgresql-12

echo "Installing Docker"
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

echo "Installing zsh and improved shell"
apt -qq -y install zsh

echo "Installing Rust - Cargo"
curl https://sh.rustup.rs -sSf | sh

echo ""
echo "All done."
echo ""
echo "Please run the following to allow access to your user to the newly created web directory"
echo "chown your-user /var/www/html"
echo ""
echo "Please run the following command manually to use Docker:"
echo "sudo usermod -aG docker your-user"
echo ""
echo "To use zsh shell please return to your user and run the two following commands"
echo "wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh"
echo "chsh -s `which zsh`"
echo ""
echo 'Run `ssh-keygen` and then `cat ~/.ssh/id_rsa.pub` from your user'
echo "Please reboot to apply all changes and start zshing.. :)"
