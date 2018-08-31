#!/bin/sh

/usr/local/bin/terraform remote config \
  -backend=s3 \
  -backend-config="bucket=hogehogefugafugapiyopiyomogemoge" \
  -backend-config="key=terraform.tfstate" \
  -backend-config="region=ap-northeast-1" \

/usr/local/bin/terraform get
/usr/local/bin/terraform $@
/usr/local/bin/terraform remote push