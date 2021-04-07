#update changes
apt-get update

# install deps
apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates

# install node js
curl -sL https://deb.nodesource.com/setup_12.x | bash
apt -y install nodejs

#  semantic package
npm install -g semantic-release @semantic-release/gitlab-config

# install jdk
apt-get install openjdk-13-jdk


#install python
apt-get install -y python3.6

# install docker
curl --tlsv1 https://get.docker.com/ | sh
dockerd-rootless-setuptool.sh install

# install aws cli
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
