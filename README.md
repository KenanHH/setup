# INTRO

Kenan Hadzihasanovic,simple setup install for linux(ubuntu) or other linux distro just change package manager. 

DATE: 11.03.2019.

Setup for C, C++, GO, JS with nodeJS using VIM8.

This setup automatically installs pathogen for vim. If you want to add another plugin after installation, simply clone it into bundle folder. Make and other building stuff you will do inside cloned folder.


## Installation

Installation is based on presumption that system is fresh installed without any previous configurations. 

```
sudo apt-get install wget
wget /PATH/TO/SCRIPT/ -- like https://raw.githubusercontent.com/KenanHH/setup/master/script.sh
chmod +x script.sh 
yes | sudo ./script.sh

```

After installing nodejs and npm you need to install jshint and csslint, for syntastic checker to work on .js files

```
sudo npm install -g jshint
sudo npm install -g csslint

```

This deoplete setup works only with c/c++ and GO. 
## Problems

Be sure that links are appropriate in script.sh. You need to have VIM 8.0 and python3.6.1+ for using deoplete. For more details visit https://github.com/shougo/deoplete.nvim


###### When using LXC container
> failed to initialize build cache at /home/kenan/.cache/go-build: open /home/kenan/.cache/go-build/log.txt: permission denied

```
sudo chmod o+w ~/.cache/go-build/log.txt

```

> Unable to use Ctrl-] and Ctrl-t for pushing and poping from tags stack in vim when using .go file

```
Comment lines in vim plugin on location vim-go/ftplugin/go.vim where that keymap is used.

```

##### Installing jshint 
When you try to run jshint
> /usr/bin/env: node: No such file or directory

```
sudo ln -s /usr/bin/node{js,}

```
This is problem during Ubuntu 16.04 naming nodejs versus node. Just create symbolic link to it.

## ZSH 
Two files are included that may be usefull when using zsh as default shell interpreter. Installing Antibody is mandatory, and also following install zsh steps.

## To do

> Testing install script, and add stuff for dependencies to auto install

> Optimize deoplete, sort sources and limit maximum 

> Testing on other distros

> Expanding usage to other programming languages 

> Clean up after install 
