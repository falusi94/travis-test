#!/bin/bash
cd `dirname $0`

echo '1 Hello world' > /tmp/travis

# Extract the package
tar -xzf package.tgz
rm package.tgz

# Copy any file we want to keep from build to build
#cp www/app/config/parameters.yml build/app/config/parameters.yml
echo '2 Hello world' >> /tmp/travis

# Swap it all around, keeping the previous version aside in case something goes wrong
rm -rf www_old
mv www www_old
mv build www

echo '3 Hello world' >> /tmp/travis
