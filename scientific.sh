#! /bin/bash
#
# scientific.sh
# Copyright (C) 2014 trunghuynh <trunghuynh@Trungs-MBP.home>
#
echo "Installing git..."
sudo apt-get install git

echo "Install tmux.."
sudo apt-get install tmux

echo "Configuring dot files..."
git clone https://github.com/trunghlt/dotfiles.git
cd dotfiles
chmod a+x tm
chmod a+x install.sh
./install.sh
cd ~

echo "Installing vim spf..."
curl http://j.mp/spf13-vim3 -L -o - | sh

echo "Installing python virtual environment..."
sudo apt-get install python-dev
sudo easy_install pip
sudo pip install virtualenv
virtualenv scientific
echo "source trung/bin/activate" >> ~/.bashrc
source scientific/bin/activate
sudo apt-get install gcc gfortran libblas-dev liblapack-dev
pip install numpy scipy
pip install theano pandas ipython jinja2 pyzmq tornado
