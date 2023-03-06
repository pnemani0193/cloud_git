#!/usr/bin/env/ bash
echo $2 > token-file
gcloud compute instance create pn_instance-1 --project=$1 --access-token-file=token-file $3
