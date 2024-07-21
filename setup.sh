#! /bin/bash

set -eu

usage() {
    echo "Usage: $0 [-h] [-e] [-d]"
    echo "Either -e or -b option is required."
    echo "  -e Run script to set up the exploit environment"
    echo "  -d Run script to set up the development environment"
    echo "  -h Show this help message"
}

while getopts "edh" opt; do
    case $opt in
        e)  ./setup/ctf.sh ;;
        d)  ./setup/general.sh ;;
        h) usage; exit 0 ;;
        \?) echo "Invalid option: -$OPTARG"; usage; exit 1 ;;
    esac
done
