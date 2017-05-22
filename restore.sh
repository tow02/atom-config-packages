#!/bin/bash

apm install --packages-file packges.list

if [ $? -eq 0 ]
then
  echo "Successfully restore all packages"
else
  echo "Something wrong!"
fi
