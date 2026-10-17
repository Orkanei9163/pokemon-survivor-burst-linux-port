#!/bin/bash
DIR="$(cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")" && pwd)"
cd "$DIR"
exec ./mkxp-z.x86_64 "$@"
