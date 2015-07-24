#~/exam is the main directory in which all files and sub-directory is there
FILES=$(find ~/exam -type f)
for f in $FILES
do
for g in $FILES
do
  if [ "$f" == "$g" ]; then
    break
  fi
  if diff $f $g >/dev/null ;then
  echo "$f $g" 
  fi
done
done
    
