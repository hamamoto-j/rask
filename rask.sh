#!/bin/bash

build(){
  docker build -t rask_image .
}

start(){
  docker run -td --rm --name rask -v $PWD:/rask -p 3000:3000 rask_image
  docker exec rask rails assets:precompile
  docker exec rask rails s -p 3000 -b 0.0.0.0 -d
}

stop(){
  docker stop rask
}

delete(){
  docker stop rask
  docker rm rask
  docker rmi rask_image
}

help(){
cat << EOS
command
build : create rask docker image
start : start rask
stop : stop rask
delete : delete rask and rask docker image        
EOS
}

case "$1" in
  "build" ) build ;;
  "start" ) start ;;
  "stop" ) stop ;;
  "delete" ) delete ;;
  * ) help ;;
esac
