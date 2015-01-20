#!/bin/bash

#    http://bash.cyberciti.biz/guide/Test_command
#    
#    Test command
#    
#    The test command is used to check file types and compare values. Test is used in conditional execution. It is used for:
#        - File attributes comparisons
#        - Perform string comparisons.
#        - Basic arithmetic comparisons.
#    
#    test command syntax
#        - test condition
#            OR
#        - test condition && true-command
#            OR
#        - test condition || false-command
#            OR
#        - test condition && true-command || false-command
#    

test 5 -gt 2 && echo "Yes"
test 1 -lt 2 && echo "Yes"
test 5 -eq 5 && echo Yes || echo No
test 5 -eq 15 && echo Yes || echo No
test 5 -ne 10 && echo Yes || echo No
test -f /etc/profile && echo "/etc/profile found." || echo "/etc/profile not found."
