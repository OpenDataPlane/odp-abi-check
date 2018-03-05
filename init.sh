#!/bin/sh

set -e

for branch in installed build_logs src
do
	git fetch origin +$branch:$branch
	rm -rf $branch
	git clone -b $branch . $branch
done
