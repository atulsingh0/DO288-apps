#!/bin/bash

echo "Changing quip to english..."
sed -i 's/Veni, vidi, vici/I came, I saw, I conquered/g' \
../quip/src/main/java/com/redhat/training/example/Quip.java

echo "Committing the changes..."
cd ../quip
git commit -a -m "Changed quip lang to english"

echo "Pushing changes to classroom Git repository..."
git push
cd ~
