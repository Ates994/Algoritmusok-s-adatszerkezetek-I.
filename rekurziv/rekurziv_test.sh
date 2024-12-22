#!/bin/bash

PYTHON_SCRIPT="rekurziv.py"

if [ ! -f "$PYTHON_SCRIPT" ]; then
  echo "Hiba: A $PYTHON_SCRIPT nem található!"
  exit 1
fi

inputs=(0 1 5 10 15 20)
expected_outputs=(0 1 5 55 610 6765)

for i in "${!inputs[@]}"; do
  input="${inputs[$i]}"
  expected="${expected_outputs[$i]}"
  echo "Teszt #$((i+1)): Bemenet: $input"

  output=$(echo "$input" | python3 "$PYTHON_SCRIPT")
  echo "Eredmény: $output"

  if [[ "$output" == *"$expected"* ]]; then
    echo "Teszt sikeres!"
  else
    echo "Teszt sikertelen. Elvárt: $expected, Kapott: $output"
  fi
  echo "--------------------------------"
done
