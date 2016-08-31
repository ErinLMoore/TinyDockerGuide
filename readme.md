<center>💖💖🐳HOW TO USE DOCKER 🐳💖💖
==========
<center>  For the purposes of testing out your C kata
-----------------
****

1. [Install Docker](https://docs.docker.com/engine/getstarted/step_one/#step-1-get-docker). You can download the .dmg off of the linked site, or use homebrew.

1. Get [Docker for Mac](https://docs.docker.com/docker-for-mac/). Install this. Have it running. It takes care of running the Docker daemon for you. If you want to use a command-line tool instead, look into Docker Machine.

2. Either clone this repo, or just get the Dockerfile and put it into a new directory. Let's call it 'TinyDockerGuide'. Put your code files in a subfolder there called 'code' (there will be some there already if you've cloned this repo.)

3. To build the Dockerfile: from your directory, do
`docker build -t c-kata-14.04-check .` . -t sets a tag for this build to be used later.

4. To [run the Docker container](https://docs.docker.com/engine/tutorials/dockerizing/): from the directory do
`docker run -i -t --name kata -v /Users/YourUserName/TinyDockerGuide/code:/code c-kata-14.04-check /bin/bash`. "Code" here is both the name of the directory we put your project in, and the name of the working directory docker starts in. -i and -t start you off in an interactive terminal. Obviously, change the path to whatever is correct for where you put your dockerpractice directory.

5. You should end up inside the directory
with your code, from which you can just run 'make' or whatever you like.  To run this particular sample code, do 'make' and then 'make run_tests'

5. Type 'exit' when you're done in Ubuntu

6. To remove the docker container which is a thing you have to do before you can run it again
  `docker rm kata`
  `docker ps -a` - this lists all your Docker containers so you can check and make sure it's gone.
