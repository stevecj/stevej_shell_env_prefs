#! /bin/bash

cd $(dirname $0)
DATETIME=`date "+%Y_%m_%d.%H_%M_%S"`
BACKUPDIR=$HOME/.backup.conf.$DATETIME

mkdir $BACKUPDIR

# Make backup copies of original config. files.
if [ -f $HOME/.bash_profile ] ; then cp $HOME/.bash_profile $BACKUPDIR/ ; fi
if [ -f $HOME/.bashrc ]       ; then cp $HOME/.bashrc $BACKUPDIR/       ; fi
if [ -f $HOME/.inputrc ]      ; then cp $HOME/.inputrc $BACKUPDIR/      ; fi

# Ensure config. files we care about exist.
touch $HOME/.bash_profile
touch $HOME/.bashrc
touch $HOME/.inputrc

# Ignore case for autocompletion unless already explicitly ignored or considered.
if !  (grep -E '^[^#]*set\s+completion-ignore-case\b' $HOME/.inputrc > /dev/null) ; then
  cat ./config_files/inputrc_ignore_case >> $HOME/.inputrc
fi

