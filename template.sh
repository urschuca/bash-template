#!/usr/bin/env bash
# don't forget to shellcheck

set -o errexit
set -o nounset
set -o pipefail
if [[ -n "${TRACE-}" ]]; then
    set -o xtrace
fi

bold=$(tput bold)
reset=$(tput sgr0)
purple=$(tput setaf 208)
green=$(tput setaf 76)
red=$(tput setaf 1)

e_header() { printf "\n${bold}${purple}==========  %s  ==========${reset}\n" "$@"
}
e_success() { printf "${green}✔ %s${reset}\n" "$@"
}
e_error() { printf "${red}✖ %s${reset}\n" "$@"
}

if [[ "$1" =~ ^-*h(elp)?$ ]]; then
    echo 'Usage: ./script.sh arg-one arg-two

This is an awesome bash script to make your life better.

'
    exit
fi

cd "$(dirname "$0")"

main() {
    echo do awesome stuff
}

main "$@"

