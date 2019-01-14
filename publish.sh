#!/bin/bash
# Publish site directory to aws s3

flags="--delete"
# flags+=" --acl public-read"

gulp

url="s3://orickwedding.com/"

aws s3 sync . $url $flags
