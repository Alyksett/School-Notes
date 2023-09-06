#!/bin/bash

# Initialize variables with default values
option=""
type=""
classname=""
jotname=""
date=$(date +"%Y-%m-%d")

# Function to display script usage
usage() {
  echo "Usage: $0 -c <class>, -t <type>"
  
  echo "  -c, --class <class>. Options: 4011, 4511, 4707, 5106"
  echo "  -t, --type <type>. Options: jot, lecture, homework"
  echo "  -j, --type <jot>. Name of jot"
  exit 1
}

generate() {
    case $type in
        "jot")
            case $jotname in
                "")
                echo "Please enter name for jot:"
                read jotname
                ;;
                *)
                ;;
            esac
            target_file="./${classname}/Jots/${jotname}.md"
            if [ ! -e "$target_file" ]; then
                sed -e "s|{{classname}}|${classname}|g" \
                    -e "s|{{date}}|$date|g" \
                    -e "s|{{jotname}}|$jotname|g" \
                    ./Templates/jot.md > "$target_file"
                    
            else
                echo "File already exists. Not overwriting."
            fi
            ;;
            
        "lecture")
            target_file="./${classname}/Class Notes/${date}.md"
            if [ ! -e "$target_file" ]; then
                sed -e "s|{{classname}}|${classname}|g" \
                    -e "s|{{date}}|$date|g" \
                    ./Templates/lecture.md > "$target_file"
            else
                echo "File already exists. Not overwriting."
            fi
            ;;

        "homework")
            target_file="./${classname}/Homework/${date}.md"
            if [ ! -e "$target_file" ]; then
                sed -e "s|{{classname}}|${classname}|g" \
                    -e "s|{{date}}|$date|g" \
                    ./Templates/homework.md > "$target_file"
            else
                echo "File already exists. Not overwriting."
            fi
        
esac
}

# Parse command-line arguments
while [[ $# -gt 0 ]]; do
  key="$1"
  case $key in
    -t|--type)
      type="$2"
      shift 2
      ;;
    -c|--class)
      option="$2"
      shift 2
      ;;
    -j|--jotname)
      jotname="$2"
      shift 2
      ;;
    *)
      usage
      ;;
  esac
done

# Check if the option is empty or not one of the valid choices

case $option in
  4011)
    echo "You selected 4011"
    classname="4011 Formal Language and Autonoma"
    
    ;;
  4511)
    echo "You selected 4511W"
    classname="4511W Introduction to Artificial Intellegence"
    
    ;;
  4707)
    echo "You selected 4707"
    classname="4707 Practice of Database Systems"
    ;;
    
  5106)
    echo "You selected 5106"
    classname="5106 Programming Languages"
    ;;
  *)
    usage
    ;;
esac

case $type in
  "jot")
    echo "selected jot"
    type="jot"    
    ;;
  "lecture")
    echo "selected lecture"
    type="lecture"    
    ;;
  "homework")
    echo "selected homework"
    type="homework"    
    ;;
  *)
    usage
    ;;
esac

generate
