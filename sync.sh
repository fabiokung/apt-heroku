#!/bin/bash

apt-ftparchive generate apt-ftparchive.conf
apt-ftparchive -c lucid.conf release www/dists/lucid > www/dists/lucid/Release
apt-ftparchive -c precise.conf release www/dists/precise > www/dists/precise/Release
