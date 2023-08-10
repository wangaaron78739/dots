set shell := ["fish", "-c"]

wd := invocation_directory()
justrun := "just -d " + wd + " -f " + justfile()

lets:
    cd ~/.letsfiles/ && $EDITOR

editor:
    echo $EDITOR

@config:
    #!/usr/bin/env fish
    set chosen (yadm tracked ~ | fzf --preview='bat {}')
    test -n chosen && nvim $chosen

fish:
    cd $FISH_CONFIG_DIR && $EDITOR $FISH_CONFIG_PATH
    source $FISH_CONFIG_PATH

nvim: 
    cd ~/.config/nvim && $EDITOR
	
git: 
    $EDITOR ~/.gitconfig

install:
    cd ~/install-system.sh/ && $EDITOR Justfile

kitty:
    cd ~/.config/ && $EDITOR kitty/kitty.conf

broot:
    cd ~/.config/ && $EDITOR broot/conf.hjson

cargo:
    cd ~/.cargo/ && $EDITOR config.toml

hypr:
    cd ~/.config/hypr && $EDITOR
