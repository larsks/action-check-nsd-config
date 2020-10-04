#!/bin/sh

set -e

nsd_config_file=$1
zone_directory=$2
zone_pattern=$3

echo "checking nsd configuration"
nsd-checkconf -v ${nsd_config_file}

for zf in "${zone_directory}"/$zone_pattern; do
	echo "checking zonefile $zf"
done
