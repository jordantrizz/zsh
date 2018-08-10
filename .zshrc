# If you come from bash you might have to change your $PATH.
# Mac Ports in /opt/local/bin
export GIT_ROOT="$HOME/zsh"
export PATH=$HOME/bin:/usr/local/bin:/opt/local/bin:$GIT_ROOT:$PATH
export TERM="xterm-256color"
# Localtion of git repository

# Initialize antigen
if [[ -a $GIT_ROOT/antigen.zsh ]]; then
        echo "Loading antigen from $GIT_ROOT/antigen.zsh";
        source $GIT_ROOT/antigen.zsh

	# Use oh-my-zsh
	# ZSH plugins
	plugins=(git osx bgnotify mysql-colorize extract history z cloudapp)
	antigen use oh-my-zsh
	
        # oh-my-zsh Custom directory
        export ZSH_CUSTOM="$GIT_ROOT"
        # Set oh-my-zsh theme to load default is ZSH_THEME="robbyrussell"
	antigen theme bhilburn/powerlevel9k powerlevel9k
        # Load Powerlevel 9k Customizations
        source $GIT_ROOT/powerlevel9k.zshrc

	# Continue with loading antigen bundles
        antigen bundle zsh-users/zsh-syntax-highlighting
        antigen bundle command-not-found
        antigen bundle wfxr/forgit
        antigen bundle andrewferrier/fzf-z
        source $ZSH_CUSTOM/.fzf-key-bindings.zsh
        antigen bundle djui/alias-tips
        #antigen bundle desyncr/auto-ls
        #antigen bundle MikeDacre/careful_rm
        antigen bundle viasite-ansible/zsh-ansible-server
        antigen bundle micha/resty
        antigen bundle zpm-zsh/mysql-colorize
        #antigen bundle so-fancy/diff-so-fancy
	#git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
	antigen bundle zsh-users/zsh-autosuggestions
        antigen apply
else
        echo "Couldn't load antigen..";
fi

# -- External Plugins
source ~/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.zsh
#. $ZSH/plugins/z/z.sh - broken

# Default ZSH aliases and other functions
source $GIT_ROOT/defaults.zshrc

# Personal Config outside of git repo
if [[ -a ~/.personal.zshrc ]]; then
        source ~/.personal.zshrc
        echo "Loading personal ZSH config...";
else
        echo "No personal ZSH config loaded";
fi

