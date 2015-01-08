#!/bin/bash

#
# examples from
#   http://bash.cyberciti.biz/guide/Bash_variable_existence_check
#
#   Bash variable existence check
#
# If the variable is not defined, you can stop executing the Bash script with the following syntax:
#   ${varName?Error varName is not defined}
#   ${varName:?Error varName is not defined or is empty}

# Variable sanity check with :? 

path=${1:?Error command line argument not passed}

echo "Backup path is $path."
echo "I'm done if \$path is set."
