#!/bin/bash

. ./docker.production.conf

docker login -u krickykiki -p $DockerPassword

# Run only once

# sudo apt-get update
# sudo apt-get install rubygems -y
# sudo gem install bundler
# 
# cd ~
# rm -rf .rbenv/
# git clone https://github.com/rbenv/rbenv.git .rbenv
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
# echo 'eval "$(rbenv init -)"' >> ~/.bashrc
# git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
# source ~/.bashrc
# 
# rbenv install 3.0.6
# rbenv local 3.0.6
# 
# sudo apt-get install libmariadb-dev-compat libmariadb-dev -y

docker build -t krickykiki/astuto . --build-arg ENVIRONMENT=production
docker push krickykiki/astuto