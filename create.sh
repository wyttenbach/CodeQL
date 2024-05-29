#!/bin/bash
dir=$(cd $(dirname $0); pwd)
. $dir/common.sh

if [ $# -eq 0 ]; then
    echo "Usage: $0 [dbname]"
    exit 1
fi
dbname="$1"

$CODEQL_HOME/codeql database create "$CODEQL_DBS/$dbname" --language=java --build-mode autobuild
exit $?