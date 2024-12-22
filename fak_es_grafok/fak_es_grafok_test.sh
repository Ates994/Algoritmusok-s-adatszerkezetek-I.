#!/bin/bash

PYTHON_SCRIPT="fak_es_grafok.py"

if [ ! -f "$PYTHON_SCRIPT" ]; then
  echo "Hiba: A $PYTHON_SCRIPT nem található!"
  exit 1
fi

inputs=("A-B,B-C,C-D,D-E" "1-2,2-3,3-4,4-5" "X-Y,Y-Z,Z-W,W-X" "M-N,N-O,O-P,P-M")
starts=("A" "1" "X" "M")
expected_outputs=("['A', 'B', 'C', 'D', 'E']" "['1', '2', '3', '4', '5']" "['X', 'Y', 'Z', 'W']" "['M', 'N', 'O', 'P']")

for i in "${!inputs[@]}"; do
  input="${inputs[$i]}"
  start="${starts[$i]}"
  expected="${expected_outputs[$i]}"
  echo "Teszt #$((i+1)): Bemenet: $input, Kezdő csúcs: $start"

  output=$(echo -e "$input\n$start" | python3 "$PYTHON_SCRIPT")
  echo "Eredmény: $output"

  if [[ "$output" == *"$expected"* ]]; then
    echo "Teszt sikeres!"
  else
    echo "Teszt sikertelen. Elvárt: $expected, Kapott: $output"
  fi
  echo "--------------------------------"
done
