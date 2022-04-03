Running container

## Build the Dockerfile
docker build -t shell-script .

## Run the image
docker run -it -v /var/run/docker.sock:/var/run/docker.sock shell-script