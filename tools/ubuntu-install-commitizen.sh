#!/usr/bin/env bash

## date:   2022.05.06
## author: duruyao@gmail.com
## desc:   ubuntu install commitizen
## usage:  bash tools/ubuntu-install-commitizen.sh

set -euo pipefail
set -x

## install `Node.js` and `npm` by `apt`
sudo apt install -y nodejs npm
sudo npm install -g n
sudo n stable
node --version
npm --version

## install `commitizen` by `npm`
npm install -g commitizen

## execute the command in the project root directory
commitizen init cz-conventional-changelog --save --save-exact

## append this content to `.gitignore`
echo "
# Commitizen
node_modules/
package.json
package-lock.json" >>.gitignore

## use `git cz` instead of `git commit`

