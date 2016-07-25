#!/bin/bash

# For commits to origin/content, we want to test, then push content /to master.
# For merges into master, we want to test, then push public/ to gh-pages.

# This file has the starting point to fix GitHub Issues #6 and #28. Currently, it does just #6.

# if [ "$TRAVIS_BRANCH" == "content" ]; 
# 	then 
# 		BRANCH="content"; 
# 		TARGET="master";
# elif [ "$TRAVIS_BRANCH" == "master" ]; 
# 	then 
# 		BRANCH="master";	
# 		TARGET="gh-pages";
# fi

if ["$TRAVIS_BRANCH" == "master" && "$TRAVIS_COMMIT" = "true" && "$TRAVIS_PULL_REQUEST" = "false" ]; then
	then
		CONT="true";
else
	exit 0; #If we aren't deploying, run away. We are only deploying for commits to /master and /content
fi 

if "CONT" = "true" then
	git clone -b $TARGET https://${GH_TOKEN}@${GH_REF} $TARGET #Get the target branch
	rm -rf $TARGET
	cp -R public/* $TARGET #Copy the Hugo output to the new location
	cd $TARGET
	git config user.email "sam.tosborne@googlemail.com"
  git config user.name "guides-travis" #Setup Git to receive files
  git add -A 
  git commit -a -m "Deployment of $BRANCH into $TARGET | Travis Build $TRAVIS_BUILD_NUMBER for $TRAVIS_COMMIT"
  #Commit the files with a unique message
  git push --quiet origin $TARGET > /dev/null 2>&1 # Hiding all the output from git push command, to prevent token leak.
fi