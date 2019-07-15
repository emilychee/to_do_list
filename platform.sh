#!/bin/bash

# a script to simplify working with 7 repositories at once
# provides basic git options without having to go into each repo

# Stop on errors
set -Eeuo pipefail

# command line options
usage() {
	echo "Usage: $0 (add|branch|pull|push|status)" | lolcat
	echo "For push and commit, provide repository name as second argument" | lolcat
	echo "For commit, provide message as third argument" | lolcat
}

# incorrect number of arguments
if [ $# -gt 3 -o $# -lt 1 ]; then
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

	"commit")
		# argument checks
		if [ $# -eq 1 ]; then
			echo "Please input a repository name" | cowsay -f dragon
			exit 1
		fi
		if [ $# -eq 2 ]; then
			echo "Please input a commit message" | cowsay -f elephant
			exit 1
		fi

		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo $2 | lolcat
		git -C $2 commit -m "$3"
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

	"push")
		# argument check
		if [ $# -eq 1 ]; then
			echo "Please input a repository name" | cowsay -f turtle
			exit 1
		fi

		echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<"
		echo $2 | lolcat
		git -C $2 push origin EA-9628  # must change branch manually for each new story
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