#!/bin/bash

if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    echo "Adding Ansible PPA"
    sudo apt-add-repository ppa:ansible/ansible -y
fi

if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo apt-get update
    sudo apt-get install ansible git ansible-playbook -y
else
    echo "Ansible already installed"
fi


if ! ansible-galaxy collection list | grep -i community.general >/dev/null 2>&1; then
    echo "Installing community.general ansible package"
    ansible-galaxy collection install community.general
else
    echo "community.general ansible package already installed"
fi
