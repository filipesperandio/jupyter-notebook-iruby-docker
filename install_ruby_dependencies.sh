#!/usr/bin/bash
set -x

# Dev dependencies
yum check-update -y || true
yum install -y gpg gcc gcc-c++ make openssl11

# Enable CentOS 7 packages (EPEL)
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
# ZeroMQ is require by iruby and is only avialable to amazonlinux through EPEL
yum install -y zeromq-devel

# Install ruby 3
amazon-linux-extras install -y ruby3.0
yum install -y ruby-devel uuid-devel

gem install activerecord pg bundler
