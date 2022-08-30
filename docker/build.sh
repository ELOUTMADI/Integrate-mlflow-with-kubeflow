#!/bin/bash

img='ae/mlflow'
tag='0.1'
docker build -t $img:$tag .
docker push $img:$tag

