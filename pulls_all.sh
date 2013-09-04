if [ "$#" -ne 1 ] ; then
  echo "###### Missing folder argument ######" >&2
  echo " Usage: ./pulls_all.sh ~/git_projects" >&2
  echo "#####################################" >&2
  exit 1
fi


for dir in `ls -d $1/*`; do (cd "$dir" && echo "########## $dir ##########" && git pull --rebase origin master); done
