#!/bin/bash
dir=$(cd $(dirname $0); pwd)
. $dir/common.sh
      
if [ $# -eq 0 ]; then
    echo "Usage: $0 [dbname]"
    exit 1
fi
dbname="$1"

$CODEQL_HOME/codeql database analyze "$CODEQL_DBS/$dbname" --format sarif-latest --output target/codeql.sarif
exit $?