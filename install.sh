# 安装 vim 插件管理
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# 建立 vim 配置符号链接
ln -sf ~/home_dots/vim/.vimrc ~/.vimrc
# 建立 tmux 配置符号链接
ln -sf ~/home_dots/tmux/.tmux.conf ~/.tmux.conf
