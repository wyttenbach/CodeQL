#!/bin/bash
CODEQL_DBS=${CODEQL_DBS:=$TOOLS/codeql-dbs}
CODEQL_SARIF=${CODEQL_SARIF:=target/codeql.sarif}
function die 
{ 
    echo "$@"
    exit 1
}

function pause
{
    echo -n "Press any key: "
    read x
    echo
}

# Check prerequisites
[ -d $CODEQL_DBS ] || die "Error: There is no $CODEQL_DBS directory"
type codeql > /dev/null 2>&1 || die "Error: codeql is not on PATH"

