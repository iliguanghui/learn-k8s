#!/bin/bash
# install nfs-server on this machine
yum -y install nfs-utils
echo "/nfs/data *(insecure,rw,sync,no_root_squash)" > /etc/exports
mkdir -p /nfs/data

systemctl enable rpcbind
systemctl enable nfs-server
systemctl start rpcbind
systemctl start nfs-server

exportfs -r
exportfs