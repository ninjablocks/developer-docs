#!/bin/bash
make html
s3cmd sync -P build/html/ s3://${BUCKET_NAME}
