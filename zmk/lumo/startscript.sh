#!/bin/bash
set -e

# Activate virtual environment
source /path_to_venv/bin/activate

# Navigate to ZMK app directory
cd ../../..

# Build left side
west build -p -d build/lumo_left -b nice_nano -- -DSHIELD=lumo_left

# Build right side
west build -p -d build/lumo_right -b nice_nano -- -DSHIELD=lumo_right

echo "Build complete!"
echo "Left side firmware: zmk/app/build/lumo_left/zephyr/zmk.uf2"
echo "Right side firmware: zmk/app/build/lumo_right/zephyr/zmk.uf2"

