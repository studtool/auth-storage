#!/usr/bin/env bash

if ! which apt-get &> /dev/null; then
    echo "apt is required"; exit 1;
fi

if ! which virtualbox &> /dev/null; then
    apt-get update \
        && apt-get install -y virtualbox-6.0
else
    echo "virtualbox already installed"; vboxmanage --version; echo "";
fi

if ! which vagrant &> /dev/null; then
    apt-get update \
        && apt-get install -y vagrant # TODO add version
else
    echo "vagrant already installed"; vagrant --version; echo "";
fi

if ! which ansible &> /dev/null ; then
    apt-get update \
        && apt-get install -y software-properties-common \
        && apt-add-repository -y --update ppa:ansible/ansible \
        && apt-get install -y ansible # TODO add version
else
    echo "ansible already installed"; ansible --version; echo "";
fi
