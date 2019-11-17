#!/bin/sh

bluetoothctl power on

cat ~/.scripts/joycons.txt | xargs -I % bluetoothctl connect %

sudo "/home/atomic/Manual Installations/jcdriver/joycon/jcdriver" --invert LH --invert RH --invert LV --invert RV
