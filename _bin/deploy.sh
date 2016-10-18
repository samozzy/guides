#!/bin/bash

# Future: Forestry commits to content, which builds, succeeds, pushes to master, which then pushes to gh-pages.

# Now: All commits to master are built and upon success published.

# For merges into master, we want to test, then push public/ to gh-pages.

# This file has the starting point to fix GitHub Issues #6 and #28. Currently, it does just #6.

if [ "$TRAVIS_BRANCH" == "master" ]; 
	then 
		BRANCH="master";	
		TARGET="gh-pages";
	else 
		exit 0;
fi

rm -rf $TARGET #Cleanup the working directory
git clone -b $TARGET https://${GH_TOKEN}@${GH_REF} $TARGET #Get the target branch
cp -R public/* $TARGET #Copy the Hugo output to the new location

cd $TARGET
git config user.email "sam.tosborne@googlemail.com"
git config user.name "guides-travis" #Setup Git to receive files
git add -A # Stage the files!
git commit -a -m "Deployment of $BRANCH into $TARGET | Travis Build $TRAVIS_BUILD_NUMBER for $TRAVIS_COMMIT"
#Commit the files with a unique message
echo "Pushing quietly..."
git push --quiet origin $TARGET # Hiding all the output from git push command, to prevent token leak.
echo "Pushed."
