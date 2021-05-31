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
  cp ./init.vim ~/.config/nvim/init.vim

  # if [ ! -d "~/.vim" ]; then
  #   echo "REMOVE ~/.vim"
  #   rm -rf ~/.vim
  # fi

  # echo "CREATE ~/.vim"
  # mkdir ~/.vim
  # echo "CREATE ~/.vim/bundle"
  # mkdir ~/.vim/bundle
  # echo "CREATE ~/.vim/.backup"
  # mkdir ~/.vim/.backup
  # echo "CREATE ~/.vim/.swp"
  # mkdir ~/.vim/.swp
  # echo "CREATE ~/.vim/.undo"
  # mkdir ~/.vim/.undo

  # git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

  echo "Done!"
}

# 从home目录到git仓库
update() {
  echo "updating..."
  cp ~/.config/i3/config ./i3.config
  cp ~/.config/i3status/config ./i3status.config
  cp ~/.config/terminator/config ./terminator.config
  cp ~/.config/nvim/init.vim ./nvim.config
  cp ~/.config/nvim/coc-settings.json ./coc-settings.json
  cp ~/.config/ranger/rc.conf ./ranger.config
  cp ~/.goldendict/config ./goldendict.config
  cp ~/.config/zathura/zathurarc ./zathurarc
  cp ~/Downloads/cjk-theme.yml ./cjk-theme.yml
  git status
  git add .
  git commit -m 'update'
  git push
  echo "Done!";
}

# 根据参数决定执行内容
if [ $1 = "install" ];then
  install
elif [ $1 = "update" ];then
  update
fi

# ranger config
# $ ranger --copy-config=all

# YouCompleteMe
# -------------
# cd ~/.vim/bundle/YouCompleteMe
# git submodule update --init --recursive
# ./install.py --clang-completer

# astyle
# ------
# wget https://nchc.dl.sourceforge.net/project/astyle/astyle/astyle%203.1/astyle_3.1_linux.tar.gz
# tar zxvf astyle_3.1_linux.tar.gz
# cd astyle/build
# cmake ..
# make && make install
