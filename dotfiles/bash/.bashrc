# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias l='gols -lhf'
alias ll='gols -lhfa'
alias tree='gols -rd 1'
alias grep='grep --color=auto'
alias f='fc-list | fzf'
alias extract='tar -xvf'
alias w='$HOME/Scripts/randomize-wallpaper.sh'
alias fastfetch='fastfetch -c /usr/share/fastfetch/presets/resilente.jsonc'
#alias dcup='sudo docker compose up -d'
#alias dcdown='sudo docker compose down'

# PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
