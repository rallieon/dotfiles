!/opt/homebrew/bin/fish

# install fisher 
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

fisher install patrickf1/colored_man_pages.fish
fisher install PatrickF1/fzf.fish

fish_add_path /opt/homebrew/bin

alias --save ls="lsd"

curl -sS https://starship.rs/install.sh | sh

brew install neovim

git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

alias --save vim="nvim"

brew install mise

mise use -g node@22

mise use -g uv@latest

mise use -g python@3.12

mise use -g ruby@3.4

mise use -g go@1.24

mise use -g java@23

mise use -g rust

# mise plugin add dotnet
mise plugin add dotnet

mise use -g dotnet@8

set -Ux STARSHIP_CONFIG ~/.config/starship/starship.toml

fish_update_completions

stow git
stow fish
stow mise
stow starship
stow lsd
stow nvim

