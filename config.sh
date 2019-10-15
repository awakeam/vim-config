#!/bin/bash

# 没带参数，显示用法
if [ ! -n "$1" ];then
  cat <<EOF
Usage:
    install  --  from git repostory to your home.
    update   --  from your home to this git repostory.
EOF
  exit 0
fi

# 从git仓库到home目录
install() {
  echo "installing..."
  cp ./.vimrc ~/.vimrc

  if [ ! -d "~/.vim" ]; then
    rm -rf ~/.vim
    mkdir ~/.vim
    mkdir ~/.vim/bundle
    mkdir ~/.vim/.backup
    mkdir ~/.vim/.swp
    mkdir ~/.vim/.undo
  fi

  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

  echo "Done!"
}

# 从home目录到git仓库
update() {
  echo "updating..."
  cp ~/.vimrc .
  echo "Done!";
}

# 根据参数决定执行内容
if [ $1 = "install" ];then
  install
elif [ $1 = "update" ];then
  update
fi

