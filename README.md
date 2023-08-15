# Jyputer Notebook with Ruby support

Refer to [iruby](https://github.com/SciRuby/iruby) for how it works in conjunction with Jupyter

This repo aims to provide a way to enable Ruby and Jupyer Notebook using docker, so the dependencies to make it work are clear.
It also setup ActiveRecord + Postgres.


## AWS + SageMaker

The reason we use `amazonlinux:2` is because it is the same base image from AWS SageMaker Notebook instances.
To add Ruby support to a SageMaker Notebook instance you can simply execute the `./install_ruby_dependencies.sh` script in a Notebook instance terminal.
It also depends on `install_postgres.sh` to fully setup what we intend to do here, so be advised.


## Local setup

Adjust `docker-compose.yml` to run on a network that has access to the DB you want to query.
This was built with postgres in mind, but should work for other DBs with some adjustments.

```
docker-compose build
docker-compose up -d
```

[Open Jupyter Lab](http://localhost:8888)
