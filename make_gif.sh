#!/bin/bash

cd screenshots
convert -delay 50 -loop 0 *.png ../animation.gif
