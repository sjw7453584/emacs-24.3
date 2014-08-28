#!/bin/bash
OS=`lsb_release -a 2>/dev/null | sed -n '/Distributor/'p|sed 's/[\t ]*//g'|cut -d ":" -f 2`
echo "the current os is $OS"
