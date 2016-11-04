# 先进入 Home 目录
cd ~

# zsh
if [ ! -d ~/.oh-my-zsh ]; then
  echo "安装 oh-my-zsh ..."
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
ln -sf ~/home_dots/zsh/.zshrc ~/.zshrc
# source ~/.zshrc

# 安装 nvim
if [ ! -f ~/.config/nvim/autoload/plug.vim ]; then
  echo "安装 oh-my-nvim 插件管理器 Plug ..."
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  pip3 install --upgrade pi
  pip3 install neovim
fi
ln -sf ~/home_dots/nvim/init.vim ~/.config/nvim/init.vim

# emacs 配置
ln -sf ~/home_dots/emacs/init.lisp ~/.spacemacs

# 建立 tmux 配置符号链接
ln -sf ~/home_dots/tmux/.tmux.conf ~/.tmux.conf
# # git
ln -sf ~/home_dots/git/.gitconfig ~/.gitconfig
ln -sf ~/home_dots/.gitignore ~/.gitignore
# editorconfig
ln -sf ~/home_dots/.editorconfig ~/.editorconfig

# 安装 nodejs
if ! type "tern" > /dev/null; then
  echo "node 没有找到, 安装中 ..."
  brew install nodejs
fi

# 安装 ternjs
if ! type "tern" > /dev/null; then
  echo "tern 没有找到, 安装中 ..."
  npm i -g tern
fi

# 安装 eslint
if ! type "eslint" > /dev/null; then
  echo "eslint 没有找到, 安装中 ..."
  npm i -g eslint eslint-config-airbnb eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react babel-eslint
fi
