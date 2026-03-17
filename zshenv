echo 'Hello from .zshenv'

function exists() {
    # Description: Check for the existence of the passed-in command but discard
    # the outcome through redirection Whether successful or erroneous because
    # our scripts will use the exit code.
    
    # `command -v` is an command that is an alternative to the which command
    # `command` is more generic for operating systems
    # see https://stackoverflow.com/677212/1341838

    # `$1` is the only argument into this function - that's how shell scripts
    # do arguments
    
    # `>` or more explicitly, `1>` is the shell syntax for redirecting STDOUT
    # to a file (see below). This overwrites whatever is in the redirect file.
    # The default for STDOUT code is 1. 
        # File Descriptors:
        # STDIN (Keyboard) = 0 ; `command -v zsh`       then `echo $?` = 0
        # STDOUT (Display) = 1 ; `command -v nonexists` then `echo $?` = 1
        # STDERR (Display) = 2 ; `ls nonexistent`       then `echo $?` = 2
    # So this will redirect successful commands to `dev/null`
    # (`>>` appends text to the end of a file)

    # `/dev/null` is known as the 'black hole'. It is always empty even if you
    # try to put stuff in it. 

    # `2` is the file descriptor for the standard error.
    
    # `&1` is also the STDOUT - you have to use an ampersand in this context.
    # It means that you should redirect this to the same place that STDOUT is
    # going.

    # explicit, longer version:
    # command -v $1 1>/dev/null 2>/dev/null
    
    # short, valid version of this command: 
    command -v $1 >/dev/null 2>&1
    
}

