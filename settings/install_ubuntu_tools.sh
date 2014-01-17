#!/bin/bash

# run this script as root, sudo su -l

# sun-java6-jdk must be the last one in array
array=(udisks-glue zsh autojump sysv-rc-conf ncurses-dev p7zip tofrodos check g++ cppcheck pylint mercurial git-core gitk git-svn valgrind cgdb ipython python-pip wireshark nmap vim ctags cscope expect flex doxygen graphviz sdcv dmenu ant manpages-posix-dev clang libclang-dev astyle)

len=${#array[*]}
i=0
while [ $i -lt $len ]; do
        echo "sudo apt-get install -y ${array[$i]}"
        sudo apt-get install -y ${array[$i]}
            let i++
        done

