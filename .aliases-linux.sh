#!/usr/bin/env bash

# Docker
alias ds="sudo docker service"
alias dd="sudo docker stack deploy -c docker-compose.yml"
alias db="sudo docker build -t"
alias dp="sudo docker pull"
alias dps="sudo docker ps"
alias dim="sudo docker images"
alias dst="sudo docker stop"
alias drm="sudo docker rm"

# Navigation
alias l='ls';
alias la='ls -a';
alias u='cd ..';
alias c='cd';
alias r='clear';

# Meta
alias wb="vim $ALIASES_LOCAL_PATH";
alias wbl="vim $ALIASES_LINUX_PATH";
alias lb='source ~/.bashrc';
gal(){ grep -i $1 $ALIASES_LINUX_PATH; }

alias aa='addAlias';
addAliasLocal(){
  if [[ -z $1 ]]; then echo "Supply a name for the alias"; return; fi;
  if [[ -z $2 ]]; then echo "Supply a comand for the alias in quotes"; return; fi;
  echo "alias $1=\"$2\";" | cat - $ALIASES_LOCAL_PATH  > temp && mv temp $ALIASES_LOCAL_PATH;
}

alias aal='addAliasLinux';
addAliasLinux(){
  if [[ -z $1 ]]; then echo "Supply a name for the alias"; return; fi;
  if [[ -z $2 ]]; then echo "Supply a comand for the alias in quotes"; return; fi;
  echo "alias $1=\"$2\";" | cat - $ALIASES_LINUX_PATH  > temp && mv temp $ALIASES_LINUX_PATH;
}

