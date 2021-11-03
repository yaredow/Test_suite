#!/bin/bash
#
# Performing checks on the Holberton School "simple shell" project

#######################################
# Print KO, in red, followed by a new line
# Globals:
#   None
# Arguments:
#   None
# Returns:
#   None
#######################################
function print_ko()
{
    echo -e "[\033[31mKO\033[37m]"
}

#######################################
# Print OK in green, followed by a new line
# Globals:
#   None
# Arguments:
#   None
# Returns:
#   None
#######################################
function print_ok()
{
    echo -e "[\033[32mOK\033[37m]"
}

#######################################
# Kill the shell in a clean way and remove temporary files
# Globals:
#   SHELL
#   OUTPUTFILE
#   ERROROUTPUTFILE
#   LTRACEOUTPUTFILE
# Arguments:
#   None
# Returns:
#   None
#######################################
function stop_shell()
{
    if [ `pidof $SHELL | wc -l` -ne 0 ]; then
	   killall -9 $SHELL 2>&1 > /dev/null
    fi
    rm -f $OUTPUTFILE $ERROROUTPUTFILE $LTRACEOUTPUTFILE
}

# Load configuration
source config

# Cleanup
echo -ne "\033[37m"
rm -f $OUTPUTFILE $LTRACEOUTPUTFILE

<<<<<<< HEAD
# Locates all tests and launch them
for dir in `ls -d "$TESTDIR"/*/`
=======
mkdir $SAVEOUTPUTDIR 2>/dev/null
# Locates all tests and launch them
for dir in `find . -regex "./[0-9].*" -type d | sort`
>>>>>>> 01dc2887c81c96288a7e6141984229ff7f7742e9
do
    echo "> $dir"
    for testname in `ls "$dir" | grep -v "~$"`
    do
	   echo -n "   # $testname: "
<<<<<<< HEAD
	   source "$dir$testname"
=======
	   source "$dir/$testname"
>>>>>>> 01dc2887c81c96288a7e6141984229ff7f7742e9
    done
done

# Cleanup
rm -f $OUTPUTFILE $LTRACEOUTPUTFILE $ERROROUTPUTFILE
rm -f checker_output_*
rm -f checker_tmp_file_*
rm -f /tmp/.checker_tmp_file_*
<<<<<<< HEAD
echo -ne "\033[37m"
=======
echo -ne "\033[37m\033[0m"
>>>>>>> 01dc2887c81c96288a7e6141984229ff7f7742e9
