#!/bin/sh

set -e

nsd_config_file=$1
zone_directory=$2
zone_pattern=$3

echo "checking nsd configuration"
nsd-checkconf -v ${nsd_config_file} > /tmp/config

if [ -d zones ]; then
	echo "checking zone files"
	for zf in zones/*; do
		echo "checking $zf"
		zone=${zf%.zone}
		nsd-checkzone $zone $zf
	done
fi
