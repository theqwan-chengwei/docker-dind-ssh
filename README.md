Docker Image
===

## build

 - FROM docker:1.8-dind（採用 docker:1.8-dind 爲 baseimage）
 - add openssh server（並安裝了 openssh server）
 - change sshd config for root login（修改了 sshd config，開放使用 root ssh 登入）
 - change root password（修改了預設的 root 密碼）
 - open port 22（開啓 22 port）



## use

default root password = `WDafaw`
setup env `ROOT_PASS` to replace default root password.

``` docker run -d --privileged --name dind -e ROOT_PASS=YOUR_ROOT_PASSWORD_FOR_CONTAINER chengweisdocker/docker-dind-ssh ```

使用的時候可以設定 env `ROOT_PASS` 取代預設的 root ssh login 密碼