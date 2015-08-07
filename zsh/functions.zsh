feature() {
  git checkout master;
  git pull;
  git checkout -b "$*";
  git commit --allow-empty -m "Initialize $*"
  git push -u
  hub pull-request -b master -h simpleweb:$* "$*"
}

whothefuckisusingport() {
  lsof -i tcp:$*
}

fixpermissions() {
  read "continue?Are you sure?"
  if [[ "$continue" =~ ^[Yy]$ ]]
  then
    find ./ -type d -exec chmod 755 {} \;
    find ./ -type f -exec chmod 644 {} \;
  fi
}

whatthefuckhaveibeenworkingon() {
  LOG=~/Sites/gitlog.tmp

  rm -f $LOG
  touch $LOG

  for dir in ~/Sites/*; do
    if [[ -d $dir ]] && [[ -d $dir/.git ]]
    then
      cd $dir;
      git log --pretty=format:"%ad - %h - $(pwd | sed 's/\/Users\/adambutler/~/g') --- %s" --date=iso --reverse --all --author="Adam Butler"  >> $LOG
    fi;
  done

  less -f ~/Sites/gitlog.tmp | sort -r | sed 's/\ \+0100//g' | more
}
