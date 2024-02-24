#!/usr/bin/env bash

# export FIREBASE_TOKEN here. To re-generate the toekn, use firebase login:ci to get a token
# https://qiita.com/yamacraft/items/d8b623cceb5c91692b65
export FIREBASE_TOKEN=1//0ed0Z6OPWBI71CgYIARAAGA4SNwF-L9IrvNrexNvxmQjr0SjRu6L-x01PMgan7RzmxsMHk8rr2nWaifXgGzwOjankXZm2lX9RmpQ

# build
wget https://github.com/spf13/hugo/releases/download/v0.21/hugo_0.21_Linux-64bit.deb
sudo dpkg -i hugo_0.21_Linux-64bit.deb
hugo

# deploy
npm install -g firebase-tools
firebase --version
firebase deploy --token "$FIREBASE_TOKEN"
