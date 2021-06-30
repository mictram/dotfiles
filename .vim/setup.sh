#!/bin/sh

pip install --user -r requirements.txt

rm -rf ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc

rm -rf ~/.vim/plugged
mkdir -p ~/.vim/plugged

vim -E -s -u "$HOME/.vim/vimrc" +PlugInstall +GoInstallBinaries +GoUpdateBinaries +qall

cd plugged/youcompleteme && python install.py --all
