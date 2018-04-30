#!/bin/bash
ip=`cat /root/ishank_ansible/file |grep ip|awk -F= '{print $2}'`
grp=`cat /root/ishank_ansible/file|grep grp|awk -F= '{print $2}'`
hstnm=`cat /root/ishank_ansible/file|grep hostname|awk -F= '{print $2}'`
if [ "$grp" = "web" ]
then
ansible-playbook --ask-vault-pass -e "variable_1=$ip variable_hostname=$hstnm" /root/ishank_ansible/adding_web_host.yaml
fi
