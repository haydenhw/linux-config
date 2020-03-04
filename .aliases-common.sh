#!/usr/bin/env bash
alias pxn="ps ax | grep node";

# Git
alias ac='git ac';
alias gc='git commit -m';
alias p='ac && git push orign HEAD';
alias gs='git s';
delb(){ git branch -d $1; }

alias aac='addAliasCommon';
addAliasCommon(){
  if [[ -z $1 ]]; then echo "Supply a name for the alias"; return; fi;
  if [[ -z $2 ]]; then echo "Supply a comand for the alias in quotes"; return; fi;
  echo "alias $1=\"$2\";" | cat - $ALIASES_COMMON_PATH  > temp && mv temp $ALIASES_COMMON_PATH;
}
