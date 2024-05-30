#!/bin/bash
dir=$(cd $(dirname $0); pwd)
. $dir/common.sh

if [ $# -eq 0 ]; then
    echo "Usage: $0 [dbname]"
    exit 1
fi
dbname="$1"

codeql database finalize "$CODEQL_DBS/$dbname" -h -vv
#--language=java
#--command mvn
#"mvn install"
#--build-mode autobuild


