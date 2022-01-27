# update system
function update() {
  sudo apt update && sudo apt -y dist-upgrade && sudo apt -y autoremove --purge
  flatpak update --assumeyes
  flatpak uninstall --assumeyes --unused

if [ -f /var/run/reboot-required ] 
then
    echo "Restart required to finalize system updates."
fi

}

# tmux open new or attach existing session
shopt -s histappend
export PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t woot || tmux new -s woot
fi

# misc
alias flag='printf "flag{%s}\n" "$(head /dev/urandom | md5sum | cut -d " " -f1)"'
alias killwine="pkill -9 '\.exe'"

# env 
export GEM_HOME=$HOME/.gem/ruby/2.7.0/bin
export GO111MODULE=on
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GEM_HOME:$GOBIN:/usr/local/go/bin
export PATH=$PATH:/home/trevor/.local/bin

# alias
alias vim='nvim'
alias discord='flatpak run com.discordapp.Discord'
alias mattermost='flatpak run com.mattermost.Desktop'
alias john='flatpak run com.openwall.John'
alias slack='flatpak run com.slack.Slack'
alias atom='flatpak run io.atom.Atom'
alias ghidra='flatpak run org.ghidra_sre.Ghidra'
alias signal='flatpak run org.signal.Signal'
alias zoom='flatpak run us.zoom.Zoom' 
