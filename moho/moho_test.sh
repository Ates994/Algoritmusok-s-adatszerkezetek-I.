#!/bin/bash

PYTHON_SCRIPT="moho_alg.py"

if [ ! -f "$PYTHON_SCRIPT" ]; then
  echo "Hiba: A $PYTHON_SCRIPT nem található!"
  exit 1
fi

tests=(
  "[(1, 3), (2, 5), (4, 7), (6, 9), (8, 10)]"
  "[(1, 2), (2, 3), (3, 4), (4, 5)]"
  "[(1, 4), (2, 3), (3, 5), (6, 8), (7, 9)]"
  "[]"
  "[(1, 10), (2, 3), (4, 5), (6, 7), (8, 9)]"
)

for i in "${!tests[@]}"; do
  input="${tests[$i]}"
  echo "Teszt #$((i+1)): Bemenet: $input"

  output=$(echo "${input}" | python3 "$PYTHON_SCRIPT")

  echo "Eredmény: $output"
  echo "--------------------------------"
done
