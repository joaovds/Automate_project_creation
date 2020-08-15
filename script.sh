#!/bin/bash
#
#Automate Project Creation - NodeJS, ReactJS...

deps=("yarn")

for i in ${deps[@]}; do
  if [[ ! $(which $i 2>/dev/null) ]]; then
    echo "Need to install: $i."
    exit 1
  fi
done

usage() {
  cat <<EOF

    Project creation - NodeJS, ReactJS ...

    -h, --help      Show help
    -v, --version   Show version

    * Version 1.0

EOF
}

askForWay() {
  read -p "Where do you want to create the project? (way after home): " way
  route=$HOME"/"$way

  if [ -e "$route" ]; then
    askForName
  else
    echo -e "Invalid path..."
    askForWay
  fi
}

askForName() {
  read -p "What is the name of the project to be created?: " name
  path=$route"/"$name

  if [ -e "$path" ]; then
    echo -e "\r\nThis directory already exists! Choose another name ..."
    askForName
  else
    read -n1 -p "The project path will be this: \"$path\" [y/n]: " confirmation
    case $confirmation in
      Y | y) echo -e "\r\nconfirm";;
      N | n) echo -e "\r\nOperation interrupted :-("; exit 0;;
      *) echo -e "\r\nInvalid Operation!"; askForName;;
    esac
  fi
}

if [[ "$1"  ]]; then
  while [[ "$1"  ]]; do
    case "$1" in
      -h | --help) usage && exit 0;;
      -v | --version) echo Version 1.0 && exit 0;;
      *) echo Invalid option && exit 1;
    esac
    shift
  done
else
  askForWay
fi

