#!/usr/bin/env bash
echo $2 > token-file
gcloud config set project pn-project-374416
gcloud compute instances create pn-instance-1 --project=pn-project-374416 --zone=us-central1-a --network-interface=subnet=pn-subnet1,no-address --tags=web-server,http-server,https-server --access-token-file=token-file
