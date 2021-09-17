#!/bin/sh

read value < <(curl -s https://www.st-andrews.ac.uk/sport/ | gawk 'match($0, /Occupancy: [^%]*/, a) {print a[0]}' | grep -Eo '[0-9]{1,3}')
echo "Gym occupancy: $value%"


