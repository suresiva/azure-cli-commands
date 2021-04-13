#login into a docker account
docker login <account-name>

#login into a jfrog artifactory host
docker login <account-name>.jfrog.io

#to pull a image from remote repo
docker pull <repo-name>/<DOCKER_REPOSITORY>:<DOCKER_TAG>

#to push a local image to remote repo
docker tag <local-image-id> <repo-name>/<DOCKER_REPOSITORY>:<DOCKER_TAG>
docker tag <local-image-name>:<local-image-version> <repo-name>/<DOCKER_REPOSITORY>:<DOCKER_TAG>

#list docker images
docker images

#list running contaiers
docker ps

#stop running container
docker stop <container-id>

#image buiding
docker build --tag <image-name>:<latest/version> .

#run docker image
docker run <image-name>:<latest/version>
#interactive
docker run -it <image-name>:<latest/version>
#with environment variables
docker run -it -e <env-var-name>='<env-var-value>' <image-name>:<latest/version>
