# Docker_Ubuntu18.04_Dev_template 
## docker-dev-env

A linux container for local Development.  Forked from TheDen:
https://raw.githubusercontent.com/TheDen/docker-dev-env/master/README.md

## Usage

`make build`: Builds the docker image.

`make run`: Runs `bash` on the docker container (with the `-P` flag).

`make run-mount`: Like `make run`, but runs the docker container with the current working directory mounted on `/`. The env var `MOUNTDIR` can be passed to mount any other folder.

`make exec`: Runs `docker exec` with `bash` on existing running container.

`make kill`: Kills all running `docker-dev-env` containers.