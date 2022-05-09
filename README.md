# adopic__init__

adopic__init__ requires:

    1. bash installed.
    2. apt installed.

With root privilege, the script will install the latest versions of:

    1. python3-pip.
    2. python3.
    3. gcc.  (32bit and 64bit)
    4. g++.  (32bit and 64bit)
    5. make.
    6. nasm. (32bit and 64bit)
    7. Sublime Text 3.
    8. git.

~/.bashrc is also updated to include the following aliases:

    ```
    alias "ls"="ls -a"
    alias "ll"="ls .."
    alias "clear"="clear && ls"
    alias ".."="cd .."
    alias "token"="cat ~/token"
    ```
