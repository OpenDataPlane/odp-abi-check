#!/bin/sh

REMOTE=${1:-origin}

echo Using remote $REMOTE

git remote update $REMOTE

for branch in src installed build_logs
do
	git push $REMOTE +$REMOTE/$branch-out:$branch
done
