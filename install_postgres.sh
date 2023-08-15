#!/usr/bin/bash
set -x

yum check-update -y || true

# Install postgres 12 binaries for DB access
# use `amazon-linux-extras list` to check other versions
amazon-linux-extras install -y postgresql12
yum install -y postgresql-devel
