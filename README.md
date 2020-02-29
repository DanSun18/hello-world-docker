# hello-world-docker
Project 2 for ECE 590, Data Analytics at Scale in the Cloud

## Project description
In this project, I created a simple Flask application (Hello, World!) and created a docker environment for its execution. The Flask application starts a server at port 5000 (by default) and returns some kind of "Hello, world!" string. The execution environment is packaged into a docker image and pushed to my repository on Docker Hub (link: https://hub.docker.com/repository/docker/dansun18/project2-hello-world-flask). Note that the application code itself is not packaged in the image. Instead, the project is meant to have the container map this directory when started, so that whatever changes made can be reflected in the container as well.

## How to run this example
First clone this repository and change the current directory to it (e.g. with ```cd```). Next, run the following command within the directory:

```
docker run --rm -d -v `pwd`:/app -p 5000:5000 dansun18/project2-hello-world-flask:v1
```

You can verify that the container is running by using the ```docker ps``` command. Once the container is running, type

```curl 127.0.0.1:5000```

You should see some variant of a "hello, world" message. 

To stop the container, run ```docker kill [container_name or container_id]```
