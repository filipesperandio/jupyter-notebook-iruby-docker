#!/usr/bin/bash
set -x

# Check on newer versions, should be somewhat equivalent to `apt-get update`
yum check-update -y || true

# Install Python3.8
amazon-linux-extras install -y python3.8

# Install Jupyter and some useful extensions
pip3.8 install jupyterlab jupyter_contrib_nbextensions notebook voila

# Fix openssl 1.1.1 error - Jupyter does not start without it.
pip3.8 install urllib3==1.26.6
