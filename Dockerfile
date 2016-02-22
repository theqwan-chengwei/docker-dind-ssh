FROM docker:1.8-dind
MAINTAINER ChengWei <chengwei@theqwan.com>

ENV ROOT_PASS WDafaw

COPY my-dockerd-entrypoint.sh /usr/local/bin/

RUN apk update \
        && apk add openssh \
        && apk add openrc \
        && openrc \
        && touch /run/openrc/softlevel \
        && apk add py-pip \
        && pip install docker-py \
        && echo "root:WDafaw" | chpasswd \
        && sed -i '$a Port 22' /etc/ssh/sshd_config \
        && sed -i '$a PermitRootLogin yes' /etc/ssh/sshd_config \
        && chmod +x /usr/local/bin/my-dockerd-entrypoint.sh


EXPOSE 22

ENTRYPOINT ["my-dockerd-entrypoint.sh"]