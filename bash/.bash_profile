#[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:/home/gobborg/.local/bin/
export PATH=$PATH:/opt/texlive/2022/bin/x86_64-linux 
#export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
#export PATH=$PATH:/home/gobborg/.local/share/gem/ruby/3.0.0/bin

# postgresql variables
PGDATA="/var/lib/postgres/data"
PGHOST="localhost"
PGPORT="5432"
PGLOG="var/log/postgres"
export PSQL_EDITOR="/usr/bin/vim"

# Japanese input
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx

#
# ~/.bash_profile
#

if test -z "${XDG_RUNTIME_DIR}"; then
  export XDG_RUNTIME_DIR=/tmp/$(id -u)-runtime-dir
  if ! test -d "${XDG_RUNTIME_DIR}"; then
    mkdir "${XDG_RUNTIME_DIR}"
    chmod 0700 "${XDG_RUNTIME_DIR}"
  fi
fi

eval "$(dircolors .dir_colors)"
