#!/bin/bash
dir=$(cd $(dirname $0); pwd)
. $dir/common.sh
      
if [ $# -eq 0 ]; then
    echo "Usage: $0 [file]"
    exit 1
fi
file="$1"
repo=$(git config --get remote.origin.url)
ref="refs/heads/$(git rev-parse --abbrev-ref HEAD)"
commit=$(git rev-parse HEAD)

# GitHub App or personal access token available in GITHUB_TOKEN
codeql github upload-results \
    --repository="$repo" \
    --ref="$ref" \
    --commit="$commit" \
    --sarif="$file"
exit $?