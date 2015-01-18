#!/bin/bash

#    http://bash.cyberciti.biz/guide/Setting_system_wide_shell_options
#    
#    Setting system wide shell options
#        - By default /etc/profile file act as a system-wide profile file for the Bash shell.
#        - You can force setting using this file for all user. However, it is recommended that you use /etc/profile.d file under CentOS / Fedora / Redhat Enterprise Linux. For all other distribution edit /etc/profile file.
#        - Task: Setting up a JAVA_HOME and PATH settings for all user.
#            - Create /etc/profile.d/java.sh file, enter:
#    
#    #!/bin/bash
#    export JAVA_HOME=/opt/jdk1.5.0_12
#    export PATH=$PATH:$JAVA_HOME/bin
#    Save and close the file. Setup executable permission:
#    
#    chmod +x /etc/profile.d/java.sh

echo "ls /etc/profile.d"
ls /etc/profile.d
echo "cat /etc/profile"
cat /etc/profile