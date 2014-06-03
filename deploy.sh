make html
s3cmd sync -P --exclude '*AppleDouble*' build/html/ s3://docs.sphere.ninja
