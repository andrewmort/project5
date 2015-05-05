#!/bin/bash

#../../../scripts/p5convert.py input/s9234_tap.etr -f etr -t stil output/s9234_tap
cd output
../../../../scripts/p5convert.py ../input/s9234_tap_small.etr -f etr -t verilog s9234_tap_small
