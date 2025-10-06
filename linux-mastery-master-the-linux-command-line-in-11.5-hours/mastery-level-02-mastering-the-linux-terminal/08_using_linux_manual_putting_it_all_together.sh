#################### USING THE LINUX MANUAL - PUTTING IT ALL TOGETHER ####################

#################### Search for what might be available in the manual ####################
# Look for a command that lists out directory contents
# Returns potential man pages, sections they are in and explanation 

man -k "list directory contents"
dir (1)              - list directory contents
ls (1)               - list directory contents
ntfsls (8)           - list directory contents on an NTFS filesystem
vdir (1)             - list directory contents

#################### Open man page ####################
man 1 ls 
man ls 

# Output 
# LS(1)                                           User Commands                                          
# NAME
      # ls - list directory contents

# SYNOPSIS
       # ls [OPTION]... [FILE]... # Can have multiple optional options or multiple optional files, everything optional can just use command name

# DESCRIPTION
       # List  information about the FILEs (the current directory by default).  Sort entries alphabetically if
       # none of -cftuvSUX nor --sort is specified.

       # Mandatory arguments to long options are mandatory for short options too.

       # -a, --all # Can see option has a long form 
              # do not ignore entries starting with .

       # -A, --almost-all # Tend to breakup the words with a dash 
              # do not list implied . and ..

       #--author
              # with -l, print the author of each file

       #-b, --escape
              # print C-style escapes for nongraphic characters

       # --block-size=SIZE
              # scale sizes by SIZE before printing them; e.g., '--block-size=M'  prints  sizes  in  units  of
              # 1,048,576 bytes; see SIZE format below

   # Exit status:
       # 0      if OK,

       # 1      if minor problems (e.g., cannot access subdirectory),

       # 2      if serious trouble (e.g., cannot access command-line argument).

# AUTHOR
       # Written by Richard M. Stallman and David MacKenzie.

# REPORTING BUGS
       # GNU coreutils online help: <http://www.gnu.org/software/coreutils/>
       # Report ls translation bugs to <http://translationproject.org/team/>

# COPYRIGHT
       # Copyright  ©  2017  Free  Software  Foundation,  Inc.   License  GPLv3+:  GNU  GPL version 3 or later
       <http://gnu.org/licenses/gpl.html>.
       # This is free software: you are free to change and redistribute it.  There  is  NO  WARRANTY,  to  the
       extent permitted by law.

# SEE ALSO
       # Full documentation at: <http://www.gnu.org/software/coreutils/ls> # Can click hyperlicks by CTRL + Left Click
       or available locally via: info '(coreutils) ls invocation'

#################### Browse options and try them out ####################
ls # no options 
ls -l # long listing option
ls -h # human readable
ls --human-readable # use long form version of option