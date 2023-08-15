FROM amazonlinux:2

RUN yum update
RUN yum install -y gpg gcc gcc-c++ make openssl11

RUN amazon-linux-extras install -y python3.8
RUN pip3.8 install jupyterlab jupyter_contrib_nbextensions notebook voila

# Fix openssl 1.1.1 error
RUN pip3.8 install urllib3==1.26.6

# Enable CentOS 7 packages (EPEL)
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y zeromq-devel

# Install ruby 3 support and iruby (Jupyter Kernel)
RUN amazon-linux-extras install -y ruby3.0
RUN yum install -y ruby-devel uuid-devel
RUN gem install iruby && \
  iruby register --force

# Install postgres binaries for DB access
RUN amazon-linux-extras install -y postgresql12
RUN yum install -y postgresql-devel

RUN gem install activerecord pg bundler

COPY entry_point.sh /
COPY notebooks/ /notebooks

CMD ["/entry_point.sh"]
