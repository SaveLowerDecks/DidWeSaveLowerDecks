#!/bin/bash

# Directory for the output
output_dir="favicons"

# Check if the output directory exists, if not, create it
if [ ! -d "$output_dir" ]; then
    mkdir -p "$output_dir"
fi

# Original image
original="badgey.png"

# Array of required sizes
sizes=(16 32 48 64 96 128 180 192 256 512)

# Loop through all sizes and create resized versions in the output directory
for size in "${sizes[@]}"; do
    sips -Z $size $original --out "${output_dir}/${size}x${size}.png"
done
