#!/usr/bin/bash
set -x

gem install iruby
/usr/local/bin/iruby register --force

# Force kernel into the shared lib - require for SageMaker to work
cp -r $HOME/.local/share/jupyter/kernels/ruby /usr/local/share/jupyter/kernels/
