Copy Into Shell

sh ```
RC_PATH=~/.bashrc
CONFIG_PATH=~/common-config/

git clone https://github.com/haydenhw/linux-config $CONFIG_PATH
cd $CONFIG_PATH
ln -s "$CONFIG_PATH".aliases-common.sh ~/

echo "" >> $RC_PATH
echo "# Alias Config" >> $RC_PATH
echo "export ALIASES_COMMON_PATH=~/.aliases-common.sh" >> $RC_PATH
echo "export ALIASES_LOCAL_PATH=~/.aliases-local.sh" >> $RC_PATH
echo "export RC_PATH=~/.bashrc" >> $RC_PATH
echo "source .aliases-common.sh" >> $RC_PATH
source $RC_PATH
```










