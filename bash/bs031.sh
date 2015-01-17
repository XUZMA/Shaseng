#!/bin/bash

#    http://bash.cyberciti.biz/guide/Setting_shell_options
#    
#    Setting shell options
#    From Linux Shell Scripting Tutorial - A Beginner's handbook
#    
#    Task: Make changes to your bash shell environment using set and shopt commands.
#    The set and shopt command controls several values of variables controlling shell behavior.
#    
#    List currently configured shell options
#    Type the following command:
#    set -o
#    
#    Sample outputs:
#    
#    allexport      	off
#    braceexpand    	on
#    emacs          	on
#    errexit        	off
#    errtrace       	off
#    functrace      	off
#    hashall        	on
#    histexpand     	on
#    history        	on
#    ignoreeof      	off
#    interactive-comments	on
#    keyword        	off
#    monitor        	on
#    noclobber      	off
#    noexec         	off
#    noglob         	off
#    nolog          	off
#    notify         	off
#    nounset        	off
#    onecmd         	off
#    physical       	off
#    pipefail       	off
#    posix          	off
#    privileged     	off
#    verbose        	off
#    vi             	off
#    xtrace         	off
#    
#    How do I set and unset shell variable options?
#    To set shell variable option use the following syntax:
#    set -o variableName
#    To unset shell variable option use the following syntax:
#    set +o variableName
#    
#    Examples
#    shopt command
#    
#    You can turn on or off the values of variables controlling optional behavior using the shopt command. To view a list of some of the currently configured option via shopt, enter:
#    shopt
#    shopt -p
#    
#    Sample outputs:
#    cdable_vars    	off
#    cdspell        	off
#    checkhash      	off
#    checkwinsize   	on
#    cmdhist        	on
#    compat31       	off
#    dotglob        	off
#    execfail       	off
#    expand_aliases 	on
#    extdebug       	off
#    extglob        	off
#    extquote       	on
#    failglob       	off
#    force_fignore  	on
#    gnu_errfmt     	off
#    histappend     	off
#    histreedit     	off
#    histverify     	off
#    hostcomplete   	on
#    huponexit      	off
#    interactive_comments	on
#    lithist        	off
#    login_shell    	off
#    mailwarn       	off
#    no_empty_cmd_completion	off
#    nocaseglob     	off
#    nocasematch    	off
#    nullglob       	off
#    progcomp       	on
#    promptvars     	on
#    restricted_shell	off
#    shift_verbose  	off
#    sourcepath     	on
#    xpg_echo       	off
#    
#    How do I enable (set) and disable (unset) each option?
#    To enable (set) each option, enter:
#    shopt -s optionName
#    To disable (unset) each option, enter:
#    shopt -u optionName

set -o
echo "------------------------------------------------"
shopt