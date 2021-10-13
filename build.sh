#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

docker 'run' \
	--rm \
	--interactive \
	--tty \
	--volume "$(pwd):/src" \
	'agomezmoron/docker-gulp'
npm 'publish' --access 'public'
