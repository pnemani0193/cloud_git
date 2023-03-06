#!/usr/bin/env bash
echo $2 > token-file
gcloud compute instances create pn-instance-1 --project=$1 --access-token-file=token-file $3
