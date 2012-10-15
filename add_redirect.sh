#!/bin/bash

if [ -z $1 ] || [ -z $2 ]
then
    echo -e "Usage: $0 file base-url\n" >&2
    echo -e "\tEg.: $0 ubuntu/pool/main/project-1.2.3.deb https://mybucket.s3.aws.amazon.com/packages" >&2
    exit 1
fi

file=$(basename $1)
sed -i "/\<$file\>/d" .htaccess
echo "Redirect /$1 $2/$file" >> .htaccess
