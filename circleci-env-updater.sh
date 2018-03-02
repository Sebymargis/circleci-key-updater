#!/bin/bash

echo Starting to update CircleCi env vars
echo ############

CIRCLE_TOKEN='xxxxxxxxxxxxxxxxxxxxxxxxx'
SECRET_VALUE='secret1'

projects=(
            project1
            project2
            project3
         )

for i in "${projects[@]}"
do
	echo $i
	curl -X POST --header "Content-Type: application/json" -d '{"name":"SECRET_KEY", "value":"'$SECRET_VALUE'"}' https://circleci.com/api/v1.1/project/github/Sebymargis/$i/envvar?circle-token=$CIRCLE_TOKEN
done
