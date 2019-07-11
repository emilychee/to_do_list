#!/bin/bash

# makes git pull requests for the repos & lists which branch each repo is on

# Stop on errors
set -Eeuo pipefail

# command line options
usage() {
	echo "Usage: $0 (branch|pull)"
}

# incorrect # of arguments
if [ $# -ne 1 ]; then
	usage
	exit 1
fi

case $1 in
	"branch")
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo -n "ap-auth: " | lolcat
		git -C ap-auth branch | grep \* | cut -d ' ' -f2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo -n "ap-commons: " | lolcat
		git -C ap-commons branch | grep \* | cut -d ' ' -f2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo -n "ap-metrics: " | lolcat
		git -C ap-metrics branch | grep \* | cut -d ' ' -f2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo -n "platform-domains: " | lolcat
		git -C platform-domains branch | grep \* | cut -d ' ' -f2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo -n "potential-items: " | lolcat
		git -C potential-items branch | grep \* | cut -d ' ' -f2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo -n "product-plan-summaries: " | lolcat
		git -C product-plan-summaries branch | grep \* | cut -d ' ' -f2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo -n "apex-integration-tests: " | lolcat
		git -C apex-integration-tests branch | grep \* | cut -d ' ' -f2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		;;

	"pull")
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "ap-auth" | lolcat
		git -C ap-auth pull origin master | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "ap-commons" | lolcat
		git -C ap-commons pull origin master | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "ap-metrics" | lolcat
		git -C ap-metrics pull origin master | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "platform-domains" | lolcat
		git -C platform-domains pull origin master | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "potential-items" | lolcat
		git -C potential-items pull origin master | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "product-plan-summaries" | lolcat
		git -C product-plan-summaries pull origin master | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "apex-integration-tests" | lolcat
		git -C apex-integration-tests pull origin master | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		;;
	*)
		usage
		exit 1
		;;
esac