#!/bin/bash
echo One Moment, Setting up your environment...
mv --backup /tmp/ansible.cfg /etc/ansible/
groupadd -g $EXTERNALGID $GROUP
adduser --disabled-password --gecos '' --uid $EXTERNALUID --gid $EXTERNALGID --HOME /home/$USER --no-create-home $USER
adduser $USER sudo
echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
cd /home/$USER
#su -l $USER -c /bin/bash
su -l $USER
