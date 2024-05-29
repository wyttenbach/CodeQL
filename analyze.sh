#!/bin/bash -x
dir=$(cd $(dirname $0); pwd)
. $dir/common.sh
      
# You must specify <database>, --format, and --output.
$CODEQL_HOME/codeql database analyze 
exit $?