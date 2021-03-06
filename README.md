# jordantrizz/ZSH
This is my custom ZSH configuration. It uses antigen to install ZSH plugins.

<a href="https://www.buymeacoffee.com/jordantrask" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" style="height: 51px !important;width: 217px !important;" ></a>

<!--ts-->
   * [jordantrizz/ZSH](#jordantrizzzsh)
   * [Installation](#installation)
      * [Quick Installation](#quick-installation)
      * [Quick Install Development](#quick-install-development)
      * [Advanced Install](#advanced-install)
   * [Commands/Aliases](#commandsaliases)
   * [Notes](#notes)
      * [Windows Terminal](#windows-terminal)
         * [Direct Font Files](#direct-font-files)
         * [Script Install - Broken](#script-install---broken)
      * [ZSH](#zsh)
         * [CentOS 7   zsh 5.1.1](#centos-7--zsh-511)
   * [ToDo](#todo)

<!-- Added by: jtrask, at: Fri Dec 18 08:46:08 EST 2020 -->

<!--te-->

# Installation
## Quick Installation
```
bash <(wget -qO- https://raw.githubusercontent.com/jordantrizz/zsh/master/install)
```

## Quick Install Development
```
bash <(wget -qO- https://raw.githubusercontent.com/jordantrizz/zsh/develop/install)
```

## Advanced Install
<details><summary>Click to Reveal Advanced Install</summary>
<p>

If you don't want to have zsh within your home directory, then use the following.
1. Ensure you have zsh shell
```apt-get install zsh```
2. Clone repository to the directory of your choise
```git clone https://github.com/jordantrizz/zsh```
3. Copy .zshrc_install to ~/.zshrc or $HOME/.zshrc
```cp zsh/.zshrc_install ~/.zshrc```
4. Edit $ZSH_ROOT variable in your new ~/.zshrc to the path to the git cloned repository
***WARNING: don't use ~ use $HOME instead, as tilde doesn't work with zsh***
```sed -i 's/CHANGEME/zsh/g' .zshrc```
5. Restart your terminal/shell
</p>
</details>

# Commands/Aliases
See [commands.md](Commands)

# Notes

## Windows Terminal
### Direct Font Files
You can simply download these fonts and install them.
* https://github.com/romkatv/dotfiles-public/tree/master/.local/share/fonts/NerdFonts.

Then use the ```windows_terminal.json``` in this repository.

### Script Install - Broken
There is an issue with some of the Powerline fonts I downloaded and installed in windows. So I opted for this set of fonts using a script in a GIST https://gist.github.com/romkatv/aa7a70fe656d8b655e3c324eb10f6a8b

You can simply run this command within WSL

```
bash -c "$(curl -fsSL https://gist.githubusercontent.com/romkatv/aa7a70fe656d8b655e3c324eb10f6a8b/raw/install_meslo_wsl.sh)"
```

## ZSH
### CentOS 7 + zsh 5.1.1
```
sudo yum update -y
sudo yum install -y git make ncurses-devel gcc autoconf man yodl
git clone -b zsh-5.7.1 https://github.com/zsh-users/zsh.git /tmp/zsh
cd /tmp/zsh
./Util/preconfig
./configure
sudo make -j 20 install
```

# ToDo
- Figure out FZF wget https://github.com/junegunn/fzf-bin/releases/download/0.17.4/fzf-0.17.4-linux_amd64.tgz
- Look into diff so fancy wget https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy
- git submodule add https://github.com/skx/sysadmin-util.git

```
antigen bundle wfxr/forgit
antigen bundle djui/alias-tips
antigen bundle desyncr/auto-ls
antigen bundle MikeDacre/careful_rm
antigen bundle viasite-ansible/zsh-ansible-server
antigen bundle micha/resty

cd $ZSH_CUSTOM/; git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
cp .fzf/shell/key-bindings.zsh $ZSH_CUSTOM//.fzf-key-bindings.zsh
cd /usr/local/sbin; wget https://github.com/junegunn/fzf-bin/releases/download/0.17.4/fzf-0.17.4-linux_amd64.tgz
cd $ZSH_CUSTOM/plugins; git clone https://github.com/horosgrisa/mysql-colorize
cd $ZSH_CSUTOM/plguins; git clone https://github.com/thetic/extract.git
```
