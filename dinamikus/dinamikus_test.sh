#!/bin/bash

PYTHON_SCRIPT="dinamikus.py"

if [ ! -f "$PYTHON_SCRIPT" ]; then
  echo "Hiba: A $PYTHON_SCRIPT nem található!"
  exit 1
fi

inputs=( \
  "ABCBDAB DBDCABA" \
  "XMJYAUZ MZJAWXU" \
  "AAAA BBBB" \
  "ABCDEF ABCDEF" \
  "HELLO WORLD" \
)
expected_outputs=(4 4 0 6 1)

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
