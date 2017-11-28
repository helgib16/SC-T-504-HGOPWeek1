# Docker Exercise
* Familiarize oneself with docker, docker container and docker images.  
* Getting to know the difference between virtual machines and containers.


## What is Docker?
* Docker is the company driving the container movement. 
* With the goal of enabling true independence between applications and infrastructure.

[source: https://www.docker.com/what-docker]

## What is the difference between:
* Virtual Machine
	- Run guest OSs ontop of host OS, which require all dependencies for a package to run.
* Docker Container
	- Multiple containers share a single kernel, contain the package and the dependencies (image). 
* Docker Image
	- Is the executable and it's dependencies to make sure they don't have to be installed on the host OS.

[source: https://docs.docker.com/get-started/#container-diagram]

## What is docker-compose:
* Docker Compose is a tool for defining and running multi-container Docker applications. 
* Uses a single command to start all services from predefined configurations.

[source: https://docs.docker.com/compose/overview/]

## Results
* Got to know what Docker, Docker image, and Docker container are. 
* Got to know what docker-compose is about. 
* Completed a short tutorial that included all of these objects and features.

## Checklist
# Part 1
* [x] Create a docker image
* [x] Run an instance of your image (a docker container)
* [x] Store your docker image on Docker Cloud
* [x] Store all your code from the remainder of this assignment on GitHub, day2 folder

# Part 2
* [x] I've created a docker image
* [x] I ran an instance of my image (a docker container) and saw the results in a browser (curl)
* [x] I've stored my docker image on Docker Cloud
* [x] I've committed all my code to GitHub and commented each line in the `Dockerfile`, short description on the purpose of each line, e.g.

# Part 3
* [x] I've gotten to know Docker compose
* [x] I ran `docker-compose up` and saw the expected results

# Part 4
* [x] The files, `app.js`, `package.json`, `Dockerfile` (with comments), `docker-compose.yml`
* [x] A `README.md` file that describes the following (only 1-3 sentences each)