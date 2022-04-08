#!/bin/bash

# copy your id_rsa.pub as vagrant.pub on /home/alvaro/Documentos
cat /vagrant/vagrant.pub  | tee -a /home/vagrant/.ssh/authorized_keys
chmod 0644 /home/vagrant/.ssh/authorized_keys
echo "setup passsword less ok"



# copy your id_rsa.pub as vagrant.pub on /home/alvaro/Documentos
cat /vagrant/vagrant.hosts  | sudo tee -a /etc/hosts
echo "setup host names resolution among nodes ok"
