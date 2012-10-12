#!/bin/bash
apt-ftparchive generate apt-ftparchive.conf
apt-ftparchive -c lucid.conf release ubuntu/dists/lucid > ubuntu/dists/lucid/Release
apt-ftparchive -c precise.conf release ubuntu/dists/precise > ubuntu/dists/precise/Release
