Docker Image
===

## build

 - FROM docker:1.8-dind
 - add openssh server
 - change sshd config
 - chage root password
 - open port 22

## use

``` docker run -d --privileged --name dind -e ROOT_PASS=YOUR_ROOT_PASSWORD_FOR_CONTAINER chengweisdocker/docker-dind-ssh ```