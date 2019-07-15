#!/bin/bash

# makes git pull requests for the repos & lists which branch each repo is on

# Stop on errors
set -Eeuo pipefail

# command line options
usage() {
	echo "Usage: $0 (add|branch|pull|status)"
}

# incorrect # of arguments
if [ $# -gt 2 ]; then
	usage
	exit 1
fi

case $1 in
	"add")
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "added files to ap-auth" | lolcat
		git -C ap-auth add .
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "added files to ap-commons" | lolcat
		git -C ap-commons add .
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "added files to ap-metrics" | lolcat
		git -C ap-metrics add .
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "added files to platform-domains" | lolcat
		git -C platform-domains add .
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "added files to potential-items" | lolcat
		git -C potential-items add .
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "added files to product-plan-summaries" | lolcat
		git -C product-plan-summaries add .
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "added files to apex-integration-tests" | lolcat
		git -C apex-integration-tests add .
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		;;

	"branch")
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo -n "ap-auth: " | lolcat
		git -C ap-auth branch | grep \* | cut -d ' ' -f2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo -n "ap-commons: " | lolcat
		git -C ap-commons branch | grep \* | cut -d ' ' -f2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo -n "ap-metrics: " | lolcat
		git -C ap-metrics branch | grep \* | cut -d ' ' -f2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo -n "platform-domains: " | lolcat
		git -C platform-domains branch | grep \* | cut -d ' ' -f2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo -n "potential-items: " | lolcat
		git -C potential-items branch | grep \* | cut -d ' ' -f2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo -n "product-plan-summaries: " | lolcat
		git -C product-plan-summaries branch | grep \* | cut -d ' ' -f2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo -n "apex-integration-tests: " | lolcat
		git -C apex-integration-tests branch | grep \* | cut -d ' ' -f2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
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

	"push")
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "ap-auth" | lolcat
		git -C ap-auth push origin $2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "ap-commons" | lolcat
		git -C ap-commons push origin $2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "potential-items" | lolcat
		git -C potential-items push origin $2 | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		;;

	"status")
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "ap-auth" | lolcat
		git -C ap-auth status --porcelain | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "ap-commons" | lolcat
		git -C ap-commons status --porcelain | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "ap-metrics" | lolcat
		git -C ap-metrics status --porcelain | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "platform-domains" | lolcat
		git -C platform-domains status --porcelain | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "potential-items" | lolcat
		git -C potential-items status --porcelain | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "product-plan-summaries" | lolcat
		git -C product-plan-summaries status --porcelain | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo "apex-integration-tests" | lolcat
		git -C apex-integration-tests status --porcelain | lolcat
		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		;;
	*)
		usage
		exit 1
		;;
esac