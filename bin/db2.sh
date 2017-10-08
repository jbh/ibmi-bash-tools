#!/bin/bash

cmd=`basename "$0"`

print_use() {
  echo "Use: $cmd"
  echo "e.g.: $cmd"
  exit 1
}


if [ $# -eq 0 ]
then
  # Loop over SQL and enable history of SQL (up and down arrows)
  while IFS= read -e -p "> " sql; do
    history -s "$sql"

    # Process SQL if it doesn't start with exit
    if [[ $sql != exit* ]]
    then
      echo "Running \`$sql\`"
      system -i "call QSYS/QZDFMDB2 parm('$sql')"
    else
      echo "Goodbye"
      exit
    fi
  done
else
  print_use
fi
