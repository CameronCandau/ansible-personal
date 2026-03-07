#!/bin/bash
set -e

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y ansible-core git

mkdir -p ~/ansible-setup
cd ~/ansible-setup
git clone https://github.com/Cam-Can-Do/ansible-personal.git
cd ansible-personal
ansible-playbook kali_vm.yml -K
