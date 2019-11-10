#!/bin/bash
#
# This simple script will check all the formulas in
# 'Formula' and ensure they are up-to-date.
#
# Usage:
#   ./check-updates.sh
#

color_reset='\033[0m'
color_red='\033[0;31m'
color_green='\033[0;32m'

formulas_outdate=0
formulas_updated=0

for f in $(ls Formula); do
  echo "I: checking updates for: $f"
  url=`cat Formula/$f | grep "url" | cut -f 4 -d ' ' | tr -d '"'`
  current_version=`echo "$url" | cut -f 7 -d '/' | tr -d '"'`
  username=`echo "$url" | cut -f 4 -d '/'`
  packagename=`echo "$url" | cut -f 5 -d '/'`

  latest_version=`curl -s https://api.github.com/repos/$username/$packagename/releases/latest | jq .tag_name | tr -d '"'`
  if [[ $latest_version = "null" ]]; then
    echo "github api not working..."
    exit 1
  fi

  if [[ ! -n $(echo "$current_version" | grep "$latest_version") ]]; then
    echo -e -n "${color_red}WARNING:${color_reset} "
    echo "$packagename is outdated!"
    echo "Current version: $current_version"
    echo "Latest version: $latest_version"
    formulas_outdate=$((formulas_outdate + 1))
  else
    echo -e -n "${color_green}OK:${color_reset} "
    echo "$packagename is up-to-date"
    formulas_updated=$((formulas_updated + 1))
  fi
  echo
done

echo
echo "$formulas_outdate formula(s) out dated, and"
echo "$formulas_updated formula(s) up-to-date"

# vim: tabstop=2 shiftwidth=2 expandtab
