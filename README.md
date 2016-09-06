<center>💖💖🐳HOW TO USE DOCKER 🐳💖💖
==========
<center>  For the purposes of testing out your C kata
-----------------
****

1. Get [Docker for Mac](https://docs.docker.com/docker-for-mac/). Install this. It will install Docker on your system, as well as the background Docker daemon. Have that running while you do the rest of this. If you want to use a command-line tool instead, look into Docker Machine.

2. Either clone this repo, or just get the Dockerfile and put it into a new directory. Let's call it 'TinyDockerGuide'. Put your code files in a subfolder there called 'code' (there will be some there already if you've cloned this repo.)

3. To build the Dockerfile: from your directory, do
`docker build -t c-kata-14.04-check .` . -t sets a tag for this build to be used later.

4. To [run the Docker container](https://docs.docker.com/engine/tutorials/dockerizing/): from the directory do
`docker run -it --name kata -v /Users/yourusername/workspace/TinyDockerGuide/kata_code:/code c-kata-14.04-check /bin/bash`. "kata_code" is the name of the directory containing the code you want to run, and 'code' is the name of the working directory docker starts in. -i and -t start you off in an interactive terminal. Obviously, change the path to whatever is correct for where you put your docker practice directory. The 'name' flag allows to name your docker container. If you do this, you'll have to run 'docker rm <container name>' to remove it before you can run it again. If you leave this out, the container will get a random name each time you run it. To get a list of your existing containers, do `docker ps -a`

5. You should be at an Ubuntu command prompt, inside the directory with your code, from which you can just run 'make' or whatever you like.  To run this particular sample code, do 'make' and then 'make run_tests'

6. Type 'exit' when you're done in Ubuntu
