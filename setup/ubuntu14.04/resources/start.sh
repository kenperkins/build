#!/bin/sh

rm -f nohup.out
NODE_COMMON_PIPE=/home/iojs/test.pipe OSTYPE=linux-gnu nohup java -jar slave.jar -jnlpUrl https://jenkins-iojs.nodesource.com/computer/iojs-digitalocean-ubuntu1404-{{id}}/slave-agent.jnlp -secret {{secret}} &
OSTYPE=linux-gnu-gyp nohup java -jar slave.jar -jnlpUrl https://jenkins-iojs.nodesource.com/computer/iojs-digitalocean-ubuntu1404-{{gyp_id}}/slave-agent.jnlp -secret {{gyp_secret}} &