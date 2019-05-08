# Oh my zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
	echo "Add Oh my zsh 🚀";
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
fi;

# Antigen
if [ ! -f "$HOME/antigen.zsh" ]; then
	echo "Add Antigen 🚀";
	curl -L git.io/antigen > $HOME/antigen.zsh;
fi;

# Shortcuts
if [ ! -f "$HOME/.scm_breeze/scm_breeze.sh" ]; then
	echo "Add SCM breze 🚀";
	git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze && ~/.scm_breeze/install.sh;
fi;

# Tmux TPM
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
	echo "Add TPM for tmux 🚀";
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && ~/.tmux/plugins/tpm/bin/install_plugins;
fi;

# Vim Vundle
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
	echo "Add Vundle for vim and install plugins 🚀";
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall +qall &>/dev/null;
fi;


echo "Sync conf files";
rsync --exclude='.git/' \
	--exclude='.gitignore' \
	--exclude='bootstrap.sh' \
	--exclude='brew.sh' \
	--exclude='README.md' \
	--filter=':- .gitignore' \
	-ah --no-perms . ~;

terminal-notifier -title '🚀' -message 'Your dotfiles are ready!' -sound Ping;
# Restart config.
source $HOME/.zshrc &>/dev/null;
