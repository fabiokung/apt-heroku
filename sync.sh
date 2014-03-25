#!/bin/bash
mkdir -p cache
apt-ftparchive generate apt-ftparchive.conf
apt-ftparchive -c lucid.conf release ubuntu/dists/lucid > ubuntu/dists/lucid/Release
apt-ftparchive -c precise.conf release ubuntu/dists/precise > ubuntu/dists/precise/Release

# Uncomment the following lines if you want to sign this repo.
# gpg --output ubuntu/dists/lucid/Release.gpg -ba ubuntu/dists/lucid/Release
# gpg --output ubuntu/dists/precise/Release.gpg -ba ubuntu/dists/precise/Release
