#! /bin/bash
#
# scientific.sh
# Copyright (C) 2014 trunghuynh <trunghuynh@Trungs-MBP.home>
#
echo "Installing git..."
sudo yum install git

echo "Install tmux.."
sudo yum install tmux

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
sudo yum install python-devel python-pip
sudo pip install virtualenv
virtualenv trung
echo "source trung/bin/activate" >> ~/.bashrc
source trung/bin/activate
sudo yum install lapack lapack-devel blas blas-devel
pip install numpy scipy theano pandas ipython jinja2 pyzmq
