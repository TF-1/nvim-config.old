#Introduction
This file contains my notes on the nvim setup that I use.

#Installation

NeoVim Installation
- Install nvim (e.g. pacman -S neovim pynvim)
- Create directory ~/.config/nvim (if not yet exists)
- clone repository: git clone https://github.com/TF-1/nvim-config ~/.config/nvim
- Start nvim and run PlugInstall

Fonts
- Install the required Nerd font
git clone https://aur.archlinux.org/nerd-fonts-fira-code.git
cd nerd-fonts-fira-code
makepkg -Acs
sudo pacman -U nerd-fonts-fira-code-2.1.0-2-any.pkg.tar.xz
- Select the font in your terminal emulator

#Configuration setup
The configuration is based on the following files 

- init.vim : this files sources all the configuration files
- keys/mappings.vim : contains the vim keyboard mapping
- keys/wich-key.vim: configuration settings for the which-key plugin

#Plugins Overview
Here is a list of the plugins that are used:

##vim-plug
vim-plug is the plug in manager used to retrieve the required plug ins
It configuration is stored in vim-plug/plugins.vim


##Vim-Which-Key
This is a handy plugin that gives easy access to commands but also can
be used to learn the key-combinations. You can execute the command
via the which-key menu. By showing the key combination in the menu it
can help you remember the keyboard short cuts.

The configuration is stored in the: keys/which-key.vim 

##Ranger
- Install ranger: sudo pacman -S ranger
- Install ranger dev icons: git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
- Create a ranger config file
mkdir ~/.config/ranger
touch ~/.config/ranger/rc.conf
- Add the following lines
default_linemode devicons
set show_hidden true


#References
 Some handy links
 https://www.chrisatmachine.com/
 https://www.chrisatmachine.com/Neovim/07-ranger/
 https://aur.archlinux.org/packages/nerd-fonts-fira-code/
