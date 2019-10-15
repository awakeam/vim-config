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
    echo "REMOVE ~/.vim"
    rm -rf ~/.vim
  fi

  echo "CREATE ~/.vim"
  mkdir ~/.vim
  echo "CREATE ~/.vim/bundle"
  mkdir ~/.vim/bundle
  echo "CREATE ~/.vim/.backup"
  mkdir ~/.vim/.backup
  echo "CREATE ~/.vim/.swp"
  mkdir ~/.vim/.swp
  echo "CREATE ~/.vim/.undo"
  mkdir ~/.vim/.undo

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

