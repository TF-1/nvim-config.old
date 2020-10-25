# nvim-config
NeoVim configuration

Instruction on howto use

NeoVim
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

Ranger
- Install ranger: sudo pacman -S ranger
- Install ranger dev icons: git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
- Create a ranger config file
mkdir ~/.config/ranger
touch ~/.config/ranger/rc.conf
- Add the following lines
default_linemode devicons
set show_hidden true
  
  
 
 Some handy links
 https://www.chrisatmachine.com/
 https://www.chrisatmachine.com/Neovim/07-ranger/
 https://aur.archlinux.org/packages/nerd-fonts-fira-code/
