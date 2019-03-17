#!/bin/sh
set -e

# Use the default config.
make od_rs90_defconfig

# Clear the install location.
echo "Clearing install location..."
mkdir -p /opt/rs90-toolchain
rm -rf /opt/rs90-toolchain/*

# Clear the build location.
echo "Clearing build location..."
rm -rf output/

# Perform the build.
echo "Starting build..."
nice make

# Create packages.
echo "Creating packages..."
tar -C/opt --exclude='.fakeroot.*' -jcf opendingux-rs90-toolchain.`date +'%Y-%m-%d'`.tar.bz2 rs90-toolchain
