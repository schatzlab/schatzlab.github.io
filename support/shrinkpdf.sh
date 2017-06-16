#!/bin/sh

if [ $# -lt 1 ]
then
  echo "shrinkpdf.sh <file.pdf> | Make sure to save as 0file.pdf using "Reduce Filesize" Quartz Filter"
  exit
fi

IFS=$'\n'

mydir=`dirname $0`

for input in $*
do
  echo "shrinking \"$input\""
  ls -l "$input"

  $mydir/quartzfilter.py /System/Library/Filters/Reduce\ File\ Size.qfilter "$input" small_$input

  if [ -e "small_$input" ]
  then
    echo "Moving shrunk over original"
    mv "$input" "orig_$input"
    mv "small_$input" "$input"
    ls -l "$input"
  fi
done
