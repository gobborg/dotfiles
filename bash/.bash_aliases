#alias py='/usr/bin/python3.9' # for macos

alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'


alias open='xdg-open'
alias py='/usr/bin/python' # for arch
alias tmux="TERM=screen-256color-bce tmux"
alias vi='/usr/bin/vim'
alias wget='wget -c' # continue downloading if paused
alias vim='gvim -v'

alias dayshift='xrandr --output eDP-1 --gamma 1.0:1.0:1.0'
# alias lowbrightness='echo 200 | sudo tee /sys/class/backlight/intel_backlight/brightness'
alias nightshift='xrandr --output eDP-1 --gamma 1.0:0.95:0.80'
alias restart='reboot' #'shutdown -r now'
alias shutdown='shutdown now'

alias pandox='docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) pandoc/core'

alias pacman='sudo pacman'
