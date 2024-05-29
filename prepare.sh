#!/bin/bash
dir=$(cd $(dirname $0); pwd)
. $dir/common.sh
      
codeql pack download codeql/java-queries
exit $?