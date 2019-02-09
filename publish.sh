#!/bin/bash
# Publish site directory to aws s3

flags="--delete"
# flags+=" --acl public-read"

gulp

url="s3://orickwedding.com/"

if [[ $* == *--dev* ]]
then
    url+="dev"
fi

aws s3 sync . $url $flags
