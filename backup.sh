#!/bin/bash

copy_files() {
  files=$1
  echo "Copying $files"
  for f in $(find ~/.atom -maxdepth 1 -name $files)
  do
    echo $f
    cp $f .
  done
  echo ""
}

# copy .json, .cson, .coffee and .less from ~/.atom
copy_files *.json
copy_files *.cson
copy_files *.coffee
copy_files *.less

# list all installed packages into a file
echo -e "Generating packages.list\n"
apm list --installed --bare > packages.list

if [ $? -eq 0 ]
then
  echo "Backup is successfully done."
else
  echo "Something wrong!"
fi
