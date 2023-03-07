#!/usr/bin/env bash
echo $2 > token-file
gcloud compute instances create pn-instance-1 --project=$1 --zone=us-central1-a --network-interface=subnet=pn-subnet1,no-address --tags=web-server,http-server,https-server --access-token-file=token-file
