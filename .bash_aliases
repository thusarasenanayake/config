alias hibernate="sudo systemctl hibernate"

function open_nvim() {
	unlink ~/.config/nvim
	ln -s /mnt/dev/config/nvim ~/.config/nvim
	nvim "$@"
}

function open_lvim() {
	unlink ~/.config/nvim
	ln -s /mnt/data/dev/gits-others/_config/LazyVim-starter ~/.config/nvim
	nvim "$@"
}

alias nv=open_nvim
alias lv=open_lvim

alias serve="python3 -m http.server "
