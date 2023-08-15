# Jyputer Notebook with Ruby support

Refer to https://github.com/SciRuby/iruby for how it works in conjunction with Jupyter

This repo aims to provide a way to enable Ruby and Jupyer Notebook using docker, so the dependencies to make it work are clear.

It also setup ActiveRecord + Postgres.


## AWS + SageMaker

The reason we use `amazonlinux:2` is because it is the same base image from AWS SageMaker Notebook instances.
The steps in the `Dockerfile` can be translated to shell commands and executed in a SageMaker Notebook instance to enable ruby support there.


## Local setup

Adjust `docker-compose.yml` to run on a network that has access to the DB you want to query.
This was built with postgres in mind, but should work for other DBs with some adjustments.

```
docker-compose build
docker-compose up -d
```

[Open Jupyter Lab](http://localhost:8888)
