!/usr/bin/bash

## for japanese input
#export GTK_IM_MODULE='uim'
#export QT_IM_MODULE='uim'
#uim-xim &
#export XMODIFIERS='@im=uim'

#uim-toolbar-gtk3-systray &

#read ~/Xmodmap if it exists
if [[ -f "${HOME}/.Xmodmap" ]]; then
	xmodmap "${HOME}/.Xmodmap"
fi

# start i3 on login
exec /usr/bin/i3

# start pipewire
