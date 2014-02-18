# Configure the account the for EC2
sudo apt-get update
sudo apt-get upgrade
# sudo dpkg-reconfigure locales
sudo apt-get install git
sudo addgroup ansible
sudo adduser --shell /bin/bash -m -g ansible ansible
sudo passwd ansible
# type password
# add private key for the ssh-agent
# ssh-add ansible-control.pem
# ssh-agent
# ssh-copy-id admin@ansible-control
# edit the ~/.ssh/authorized-keys accordingly
sudo cp ~/.ssh/authorized_keys /home/ansible/.ssh
sudo chown ansible:ansible /home/ansible/.ssh/authorized_keys

# Add user into the sudo
sudo usermod -G sudo ansible
# is admin passwordless user? or just configure to run sudo commands without password, and here is the answer /etc/sudoers.d/90-cloud-init-user with NOPASSWD:ALL
# Install ansible
git clone git://github.com/ansible/ansible.git
# add source $HOME/ansible/hacking/env-setup into $HOME/.profile
# probably python-pytools is not necessary
sudo apt-get install python-setuptools python-pytools
sudo easy_install pip
sudo pip install paramiko PyYAML jinja2 httplib2

# Configure ansible
sudo mkdir /etc/ansible
sudo chown -R ansible:ansible /etc/ansible
vim /etc/ansible/hosts
# with the following content see @hosts
