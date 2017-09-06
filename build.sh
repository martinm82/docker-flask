#!/bin/bash

version=$(cat VERSION)
docker build -t mart/docker-flask:$version .
