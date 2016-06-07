# AWS CLI on Docker

This is a simple Docker container for running the [AWS CLI](https://aws.amazon.com/cli/). It's useful for quickly running commands without having to set up and configure your host machine.

## Usage

To get started, do the following.

```
git clone https://github.com/verespej/aws-cli-docker.git
cd aws-cli-docker
docker build -t aws-cli .
```

Now, you have a container image called aws-cli. Edit the files in the `configs` directory and replace the place-holders with your credentials.

Start a container using the image you created by doing the following. Make sure to replace *<full path>* with the full path to the folder.

```
docker run --rm -it -v /<full path>/aws-cli-docker/configs:/root/.aws aws-cli
```

You'll now be in a bash shell within a docker container that's set up for you to use the aws cli. The following will verify that the config files you updated locally are accessible from within your container.

```
ls ~/.aws
```

Now, you can use the AWS CLI to access AWS. If the credentials you used allow access to S3, the following command will list buckets.

```
aws s3 ls
```

For info on using the AWS CLI, see the documentation at [http://docs.aws.amazon.com/cli/latest/reference/](http://docs.aws.amazon.com/cli/latest/reference/).

