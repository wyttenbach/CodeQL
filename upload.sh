#!/bin/bash
dir=$(cd $(dirname $0); pwd)
. $dir/common.sh
      
if [ ! -f $CODEQL_SARIF ]; then
    echo "Error: $CODEQL_SARIF does not exist"
    exit 1
fi

repo=wyttenbach/dumpcert
ref="refs/heads/$(git rev-parse --abbrev-ref HEAD)"
commit=$(git rev-parse HEAD)

# GitHub App or personal access token available in GITHUB_TOKEN
codeql github upload-results \
    --repository="$repo" \
    --ref="$ref" \
    --commit="$commit" \
    --sarif=$CODEQL_SARIF
exit $?