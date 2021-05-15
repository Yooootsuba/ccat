#! /bin/sh

# Get the actual command to be called
command="$1"
shift

# To save the real arguments
arguments=""

# Check for "-c"
color=0
for arg in $*
do
    case $arg in
    -c)
        color=1
        ;;
    *)
        arguments="$arguments $arg"
        ;;
esac
done

if [ $color = 1 ]
then
    cat -n $arguments | pygmentize -g -O style=default
else
    $command $arguments
fi
