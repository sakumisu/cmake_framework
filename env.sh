#!/bin/bash

DIR=$(cd $(dirname $0) && pwd)
echo  "set SDK_BASE=$DIR"

export SDK_BASE=$DIR