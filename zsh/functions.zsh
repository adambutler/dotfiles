feature() {
  git checkout master;
  git pull;
  git checkout -b "$*";
  git commit --allow-empty -m "Initialize $*"
  git push -u
  hub pull-request -b master -h simpleweb:$* "$*"
}

fixpermissions() {
  read "continue?Are you sure?"
  if [[ "$continue" =~ ^[Yy]$ ]]
  then
    find ./ -type d -exec chmod 755 {} \;
    find ./ -type f -exec chmod 644 {} \;
  fi
}

# Check what process is using a specified port
#
# Usage:
# whothefuckisusingport <PORT>
#
whothefuckisusingport() {
  lsof -i tcp:$*
}

# Restart the TouchBar when it becomes unresponsive (ControlStrip requires sudo)
fuckyoutouchbar() {
  sudo killall TouchBarServer
  killall ControlStrip
}

# List all commits across entire ~/Developer directory by datetime
whatthefuckhaveibeenworkingon() {
  LOG=~/Developer/gitlog.tmp

  rm -f $LOG
  touch $LOG

  for dir in ~/Developer/*; do
    if [[ -d $dir ]] && [[ -d $dir/.git ]]
    then
      cd $dir;
      git log --pretty=format:"%ad - %h - $(pwd | sed 's/\/Users\/adambutler/~/g') --- %s" --date=iso --reverse --all --author="Adam Butler"  >> $LOG
    fi;
  done

  less -f ~/Sites/gitlog.tmp | sort -r | sed 's/\ \+0100//g' | more
}

t() {
  DISABLE_AUTO_TITLE="true"
  echo -ne "\e]1;$*\a"
}

untilitworks() {
  while true
  do
    $*
    if [ $? -eq 0 ]; then
      break
    fi
  done
}

transfer() {
    # check arguments
    if [ $# -eq 0 ]; then
        echo "No arguments specified." >&2
        echo "Usage:" >&2
        echo "  transfer <file|directory>" >&2
        echo "  ... | transfer <file_name>" >&2
        return 1
    fi

    # upload stdin or file
    if tty -s; then
        file="$1"
        if [ ! -e "$file" ]; then
            echo "$file: No such file or directory" >&2
            return 1
        fi

        file_name=$(basename "$file" | sed -e 's/[^a-zA-Z0-9._-]/-/g')

        # upload file or directory
        if [ -d "$file" ]; then
            # transfer directory
            file_name="$file_name.zip"
            (cd "$file" && zip -r -q - .) | curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name" | tee /dev/null
        else
            # transfer file
            cat "$file" | curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name" | tee /dev/null
        fi
    else
        # transfer pipe
        file_name=$1
        curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name" | tee /dev/null
    fi
}

# checkout prev (older) revision
git_rw() {
    git checkout HEAD~
}

# checkout next (newer) commit
git_ff() {
    git checkout $(git rev-list --topo-order HEAD.."$*" | tail -1)
}
