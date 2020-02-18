#!/bin/bash

OUTDATED="$(npm outdated)"
if [ -n "$OUTDATED" ]
then
  cd layer/nodejs
  npm update --dev
  cd ../../
  git config --global user.name 'Alexis Lemaire'
  git config --global user.email 'a.lemaire@klimapartner.de'
  git add .
  git commit -m "Updated packages"
  git push
  echo "Packages have been updated."
else
  echo "Packages are up to date, no proceeding to update."
fi
