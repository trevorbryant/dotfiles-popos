# configs

## Key bindings
Dump dconf key bindings
`$ dconf dump / >~/.config/dconf/keybindings.conf`

Import dconf key bindings
`$ dconf load / <~/.config/dconf/keybindings.conf`

## Azure CLI
Save config to:
```bash
$ ~/.azure/config
```

## Symbolic links
```bash
$ ln -s -f /home/trevor/Documents/dotfiles/.tmux.conf /home/trevor/.tmux.conf
$ ln -s -f /home/trevor/Documents/dotfiles/.vimrc /home/trevor/.vimrc 
```

## Zoom
The bash script `zoom.sh` will download and update the latest version of Zoom client.
