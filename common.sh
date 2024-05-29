#!/bin/bash
CODEQL_HOME=${CODEQL_HOME:=$TOOLS/codeql}
CODEQL_DBS=${CODEQL_DBS:=$TOOLS/codeql-dbs}

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
[ -d $CODEQL_HOME ] || die "Error: There is no $CODEQL_HOME directory"
[ -d $CODEQL_DBS ] || die "Error: There is no $CODEQL_DBS directory"

