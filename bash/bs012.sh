#!/bin/bash

#
# examples from
# http://bash.cyberciti.biz/guide/Default_shell_variables_value
# efault shell variables value

echo ${grandslam:=X.Z.M}
echo ${grandslam:-Dec.2014}
echo ${today:-Dec.2014}
