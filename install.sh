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

# git 配置
ln -sf ~/home_dots/git/.gitconfig ~/.gitconfig
ln -sf ~/home_dots/.gitignore ~/.gitignore

# editorconfig 编辑器格式统一配置
ln -sf ~/home_dots/.editorconfig ~/.editorconfig

# =============================================
# ================ 前端开发相关 =================
# =============================================
# 安装 nodejs
if ! type "node" > /dev/null; then
  echo "安装 node binary ..."
  brew install nodejs
fi

# 安装 yarn
if ! type "yarn" > /dev/null; then
  echo "安装 yarn package manager ..."
  npm install -g yarn
fi
ln -sf ~/home_dots/npm/.npmrc ~/.npmrc
ln -sf ~/home_dots/npm/.yarnrc ~/.yarnr

# 安装 ternjs
if ! type "tern" > /dev/null; then
  echo "安装 tern javascript autocomplete server ..."
  npm i -g tern
fi

# 安装 eslint
if ! type "eslint" > /dev/null; then
  echo "安装 eslint javascript linter ..."
  npm i -g eslint eslint-config-airbnb eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react babel-eslint
fi
ln -sf ~/home_dots/eslint/.eslintrc ~/.eslintrc
# go 语言开发相关
