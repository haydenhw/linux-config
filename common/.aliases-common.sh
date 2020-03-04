#!/usr/bin/env bash

# Put these in .bashrc
export ALIASES_COMMON_PATH=~/.aliases-common.sh
export ALIASES_LOCAL_PATH=~/.aliases-local.sh
export RC_PATH=~/.bashrc

alias pxn="ps ax | grep node";
alias st="SleepTimer";
alias startMongo='sudo mongod --fork --logpath /home/pi/hayden/mongologs/logfile';
alias sdn='sudo systemctl poweroff'
gal(){ grep -i $1 $ALIASES_COMMON_PATH }

# Docker
alias ds="sudo docker service"
alias dd="sudo docker stack deploy -c docker-compose.yml"
alias dp="sudo docker pull"
alias dps="sudo docker ps"
alias dim="sudo docker images"
alias dst="sudo docker stop"
alias drm="sudo docker rm"

# Navigation
alias l='ls';
alias u='cd ..';
alias c='cd';
alias r='clear';

# Meta
alias wb="vim $ALIASES_LOCAL_PATH";
alias wbc="vim $ALIASES_COMMON_PATH";
alias lb='source ~/.bashrc';

alias aa='addAlias';
addAliasLocal(){
  if [[ -z $1 ]]; then echo "Supply a name for the alias"; return; fi;
  if [[ -z $2 ]]; then echo "Supply a comand for the alias in quotes"; return; fi;
  echo "alias $1=\"$2\";" | cat - $ALIASES_LOCAL_PATH  > temp && mv temp $ALIASES_LOCAL_PATH;
}

alias aac='addAliasCommon';
addAliasCommon(){
  if [[ -z $1 ]]; then echo "Supply a name for the alias"; return; fi;
  if [[ -z $2 ]]; then echo "Supply a comand for the alias in quotes"; return; fi;
  echo "alias $1=\"$2\";" | cat - $ALIASES_COMMON_PATH  > temp && mv temp $ALIASES_COMMON_PATH;
}

