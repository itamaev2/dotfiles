#!/bin/sh

if [ ! -d ~/.dotfiles ];  then
  echo "ちゃんと『git clone https://github.com/itamaev2/dotfiles ~/.dotfiles』してください。"
  exit 1
fi

which git
if [ $? -ne 0 ]; then
  echo "git入ってない"
  exit 1
fi

# vim
ln -s ~/.dotfiles/.vimrc ~/.
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/swp
mkdir -p ~/.vim/backup

git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
