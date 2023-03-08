#!/usr/bin/env bash
echo $2 > token-file1
gcloud config set project pn-project-374416 --access-token-file=token-file1
gcloud config set account pardhasaradhisastry.nemani@valpo.edu
gcloud compute instances create pn-instance-1 --access-token-file=token-file1 --project=pn-project-374416 --zone=us-central1-a --network-interface=subnet=pn-subnet1,no-address --tags=web-server,http-server,https-server
