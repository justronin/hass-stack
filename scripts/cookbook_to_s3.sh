#!/bin/sh

rm -f cookbooks*.tar.gz
berks update
berks package
export COOKBOOK=`ls cookbooks*.tar.gz`
aws s3 cp $COOKBOOK s3://y12k-chef/hass-stack/cookbooks.tar.gz --profile y12k
rm -f cookbooks*.tar.gz

# export STACK_ID="xxxx-xxxx-xxxx-xxxx"
# aws opsworks --region us-east-1 create-deployment --stack-id $STACK_ID --command "{\"Name\":\"update_custom_cookbooks\"}"
