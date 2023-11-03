#!/bin/bash

###################################################################################################
# Brief description of this script's purpose.
#
# Contributors:
#   Full name (email)
#
# Additional details worth noting, if any. 
###################################################################################################

###################################################################################################
# CONSTANT VARIABLES
###################################################################################################

readonly VERSION="0.0.1"

###################################################################################################
# FUNCTIONS
###################################################################################################

###################################################################################################
# Function description.
# Globals:
#   VARIABLE_1
#   VARIABLE_2
#   VARIABLE_N
# Arguments:
#   Description of positional argument 1.
#   Description of positional argument N.
# Outputs:
#   Description any output.
# Returns:
#   Description of any non-default return value.
###################################################################################################
function_name() {
  # TODO: Add code for function
  local foo
  foo=$1
}

###################################################################################################
# Kill script and display a message.
# Globals:
#   None
# Arguments:
#   A message to STDERR.
# Outputs:
#   A message to STDERR.
# Returns:
#   Exit code 1.
###################################################################################################
die() {
  printf '%s\n' "$1" 1>&2
  exit 1
}

###################################################################################################
# Print usage documentation.
# Globals:
#   None
# Arguments:
#   None
# Outputs:
#   Writes usage documentation to STDOUT.
# Returns:
#   Default exit status of last command.
###################################################################################################
print_help() {
  echo
  echo "Brief description of this script's purpose."
  echo
  echo "Usage: script_template.sh [options]"
  echo
  echo "options:"
  echo "-h,--help                     Print this Help."
  echo "-V,--version                  Print script version."
  echo "-f,--file                     An example option in this template."
  echo
}

###################################################################################################
# MAIN PROGRAM
###################################################################################################

# Display help if no options are specified
if [ -z "$1" ]; then
  print_help
fi

# Template for parsing a variety of short and long option formats
while :; do
  case $1 in
    -h|-\?|--help) # display help
      print_help
      exit ;;
    -V|--version) # display version
      echo "Version ${VERSION}"
      exit ;;
    -f|--file) # take an option argument and ensure it has been specified
      if [ "$2" ]; then
        file=$2
        shift
      else
        die 'ERROR: "--file" requires a non-empty option argument.'
      fi ;;
    --file=?*) # delete everything up to "=" and assign the remainder.
      file=${1#*=} ;;
    --file=) # handle the case of an empty --file=
      die 'ERROR: "--file" requires a non-empty option argument.' ;;
    --) # end of all options
      shift
      break ;;
    -?*) # handle unknown option with a warning to STDERR
      printf 'WARN: Unknown option (ignored): %s\n' "$1" 1>&2 ;;
      # Alternative: throw an error and kill execution
      #error_msg=$(printf 'Error: Unknown option: %s\nUse -h to display usage.' "$1")
      #die "${error_msg}" ;;
    *) # default case of no more options so break out of the loop
      break
  esac
  shift
done

