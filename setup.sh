#!/bin/sh

if [ ! -d ~/.dotfiles ];  then
  echo "ちゃんと『git clone https://github.com/itamaev2/dotfiles ~/.dotfiles』してください。"
  exit 1
fi

ln -s ~/.dotfiles/.vimrc ~/.
