#!/usr/bin/env bash

wget https://github.com/gohugoio/hugo/releases/download/v0.123.3/hugo_0.123.3_linux-amd64.deb
sudo dpkg -i hugo_0.123.3_linux-amd64.deb
hugo
