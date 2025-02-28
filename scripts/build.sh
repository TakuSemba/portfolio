#!/usr/bin/env bash

CGO_ENABLED=1 go install -tags extended github.com/gohugoio/hugo@v0.123.3
which hugo
~/go/bin/hugo
