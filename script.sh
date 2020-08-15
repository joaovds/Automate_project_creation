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
    echo All right
  else
    echo -e "Invalid path..."
    askForWay
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

