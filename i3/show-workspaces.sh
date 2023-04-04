#!/bin/bash

for ws in 1 2 3 4; do 
   i3-msg workspace $ws
done


# initial focus
i3-msg workspace 1
