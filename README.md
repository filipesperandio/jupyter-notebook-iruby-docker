# Jupyter Notebook with Ruby support

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

- [Open Jupyter Lab](http://localhost:8888)
- [Ruby Example](http://localhost:8888/notebooks/notebooks/RubyExample.ipynb)


## References

- https://nithinbekal.com/posts/ruby-jupyter-notebooks/
- https://www.devdungeon.com/content/ruby-activerecord-without-rails-tutorial
- https://youtu.be/nO8vY1iNlgQ
- https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-add-external.html
- https://github.com/aws-samples/aws-sagemaker-custom-jupyter-kernel
- https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-al2.html
- https://docs.aws.amazon.com/sagemaker/latest/dg/pre-built-containers-frameworks-deep-learning.html
- https://aws.amazon.com/blogs/machine-learning/migrate-your-work-to-amazon-sagemaker-notebook-instance-with-amazon-linux-2/
- https://aws.amazon.com/blogs/machine-learning/amazon-sagemaker-notebook-instance-now-supports-amazon-linux-2/
- https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-jl.html
- https://github.com/urllib3/urllib3/issues/2168
- https://docs.aws.amazon.com/pt_br/sagemaker/latest/dg/docker-containers-prebuilt.html
- https://docs.aws.amazon.com/pt_br/sagemaker/latest/dg/prebuilt-containers-extend.html
