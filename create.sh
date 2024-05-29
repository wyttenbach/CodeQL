#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Usage: $0 [dbname]"
    exit 1
fi
CODEQL_HOME=${CODEQL_HOME:=$TOOLS/codeql}
CODEQL_DBS=${CODEQL_DBS:=$TOOLS/codeql-dbs}
dbname="$1"
$CODEQL_HOME/codeql database create "$CODEQL_DBS/$dbname" --language=java --build-mode autobuild
exit $?