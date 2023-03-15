# dotfiles
for nvim clean your previous config

mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

start an init.lua install the lazy plugin manager with the instruction given at folke/lazy then copy the the config
