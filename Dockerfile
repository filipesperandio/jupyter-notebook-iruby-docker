FROM amazonlinux:2

COPY install_python_dependencies.sh /usr/local/bin
RUN /usr/local/bin/install_python_dependencies.sh

COPY install_postgres.sh /usr/local/bin
RUN /usr/local/bin/install_postgres.sh

COPY install_ruby_dependencies.sh /usr/local/bin
RUN /usr/local/bin/install_ruby_dependencies.sh

COPY install_iruby_kernel.sh /usr/local/bin
RUN /usr/local/bin/install_iruby_kernel.sh

COPY entry_point.sh /
COPY notebooks/ /notebooks

CMD ["/entry_point.sh"]
