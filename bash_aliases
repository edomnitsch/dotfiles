# edit run commands
alias avim='vim $HOME/.bash_aliases'
alias bvim='vim $HOME/.bashrc'
alias cvim='vim $HOME/.bash_custom'
alias fvim='vim $HOME/.config/fish/config.fish'
alias gvim='vim $HOME/.gitconfig'
alias ivim='vim $HOME/.inputrc'
alias ivvim='vim $HOME/.ideavimrc'
alias pvim='vim $HOME/.bash_private'
alias vvim='vim $HOME/.vimrc'
alias vscvim='vim $HOME/.config/Code/User/settings.json'

# file management
alias bcd='builtin cd'
cd() { builtin cd "$@" && clear && ls ; }
ca() { builtin cd "$@" && clear && ls -A ; }
alias c='cd'
alias cd..='cd ..'
alias ..='cd ..'
cdg() { cd $HOME/Git ; [ -n "$1" ] && cd $1 ; }
mkcd() { mkdir $1 && cd $1 ; }
alias trash='gio trash'
alias tra='gio trash'
alias open='xdg-open'

# useful shortcuts
alias type='builtin type -a'
alias dfs='df -hx"squashfs"' # dont show snaps
ch() { curl cheat.sh/$1; }
alias rebash='exec sudo -u $USER bash'
alias childs='pstree -pauls $$'

# elementary
files() { nohup io.elementary.files -t $([ $# -gt 0 ] && echo "$@" || echo "." ) &>/dev/null & }
lfiles() { nohup pantheon-files -t $([ $# -gt 0 ] && echo "$@" || echo "." ) &>/dev/null & }

# git
alias g='git'
source /usr/share/bash-completion/completions/git
__git_complete g __git_main
tg() { touch $1 && git add $1 && git commit -m "$1"; }

# python
alias py="python"
alias ipy="ipython"
alias pm="py manage.py"
pydis() { echo $1 | python -m dis; }
alias pytime="python -m timeit"

# flask
frun() {
    export FLASK_APP=$1
    export FLASK_ENV=development
    flask run --host=0.0.0.0
}


# vala
bmeson() { rm -rf build ; meson build --prefix=/usr && ninja -C build ; }

# browser-sync
alias bsserve="browser-sync start --server --files . --no-notify"
alias bsproxy="browser-sync start --proxy 127.0.0.1:8000 --files . --no-notify"
alias bsproxy300="browser-sync start --proxy 127.0.0.1:8000 --files . --no-notify --reload-delay=300"
