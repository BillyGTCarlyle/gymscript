#!/bin/sh

read value < <(curl -s https://www.st-andrews.ac.uk/sport/ | gawk 'match($0, /Occupancy: (.)%/, a) {print a[1]}')
echo "Gym occupancy: $value%"


