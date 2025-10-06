#################### USING THE LINUX MANUAL - READING THE MAN PAGES ####################

#################### Search the manual ####################
# Search the manual for what is available for the search term "which"
man -k which

# Output 
# Potential man pages containing search term, section number and explanation 
# man page(section#)   NAME section of man page 
# lcf (1)              - Determine which of the historical versions of a config is installed
# pam_exec (8)         - PAM module which calls an external command
# pam_warn (8)         - PAM module which logs all PAM items if called
# securetty (5)        - file which lists terminals from which root can log in
# sol(6)               - a collection of card games which are easy to play with... 
# URI::WithBase (3pm)  - URIs which remember their base
# which (1)            - locate a command

#################### View man page ####################
# Open up manual page for which man page in section 1
# Press "q" to quit
man 1 which 

# Because Section 1 is used so often, don't have to type 1 as its already implied
man which

# Output 
# WHICH(1)                                   General Commands Manual                                  WHICH(1)
# NAME
      # which - locate a command

# SYNOPSIS
       # which [-a] filename ...

# DESCRIPTION
       # which  returns  the pathnames of the files (or links) which would be executed in the current environ‐
       ment, had its arguments been given as commands in a strictly POSIX-conformant shell.  It does this by
       searching the PATH for executable files matching the names of the arguments. It does not canonicalize
       path names.

# OPTIONS
       # -a     print all matching pathnames of each argument

# EXIT STATUS
       # 0      if all specified commands are found and executable

       # 1      if one or more specified commands is nonexistent or not executable

       # 2      if an invalid option is specified

# Debian                                           29 Jun 2016