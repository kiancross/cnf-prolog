#!/usr/bin/env bash
#
# Copyright (C) 2021 Kian Cross
#

PROGRAMME=../cnf_converter.pl

programme_with_data=`mktemp`
programme_output=`mktemp`

total=0
failed=0

for directory in */; do
  printf "Running ${directory::-1}..."

  ((total++))

  cat "${PROGRAMME}" > "${programme_with_data}"
  cat "${directory}/database.pl" >> "${programme_with_data}"

  cat "${directory}/query.pl" | \
    gprolog --consult-file "${programme_with_data}" | \
      grep -e "| ?-" -e "yes$" -e "no$" | sed 's/^([0-9]* ms) //g' > \
        "${programme_output}"

  if [ "$1" = "save" ]; then
    echo "Saving"
    mv "${programme_output}" "${directory}/output.txt"

  elif cmp --silent "${directory}/output.txt" "${programme_output}"; then
    echo "Passed"

  else
    echo "Failed"
    ((failed++))
  fi
done

rm -f "${programme_with_data}" "${programme_output}"

echo
echo "Results: $((total - failed))/$total tests passed"

test "$failed" = "0"
