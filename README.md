## Debian dotfiles and install
* irssi
* hexchat
* zsh
* fontconfig (infinality, .XML)
* .Xdefaults
* .XResources
* .fonts.conf
* .vimrc

### Changelog : July 12, 2016
* .XResources: migration to Base-16 color scheme.  Current one in use is Ocean / Ocean Dark
* .Xdefaults: New addition: Ubuntu Mono font for urxvt/xsession.
* .i3/config: Updated for new colors (Base-16) and new font: Ubuntu Mono
* .i3status.conf: Updated bar for new colors (Base-16) and new font: Unbutu Mono

### Login greeter (/etc/issue)
* /etc/issue color debian logo

### Vim Colors
* base16-ocean.vim
* solarized.vim

## Install
	git clone https://github.com/bradcodes/debian.git
	./dotcopy	# will copy all files to proper directories

If you prefer to not run the script, view the INSTALL.md file for proper
directory locations.
