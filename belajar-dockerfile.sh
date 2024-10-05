# To import an image
FROM alpine:3

# to build a dockerfile
docker build -t jirbthagoras/from from

# to execute a certain command in building process
RUN mkdir hello
RUN echo "Hello World" > "hello/hello-world.txt"
RUN cat "hello/hello-world.txt"

# to see the build detail and set the build uncached
docker build -t jirbthagoras/run:latest run --progress=plain --no-cache

# to execute a certain command after the image is running in container
CMD cat "hello/hello-world.txt"

# to add metadata in image
LABEL author="Jabriel Hans Talula"

# to add a file from host or link (auto extract)
ADD text/*.txt hello;

# To copy file from host (make sure to use this instruction regularly)
COPY text/*.txt hello;

# If using add / copy, u can ignore certain files using .dockerignore

# to add port metadata, wouldn't affect container's port
EXPOSE 8080/tcp

# to add an env file, can be used again in dockerfile using ${}
ENV APP_PORT=8080

# to make a docker volume automatically
VOLUME volume_name

# to make default work directory
WORKDIR /app

# to log in as specific user in start
USER username

# shortly, used as a variable and can only be used in build state
ARG key=value
docker build -t jirbthagoras/arg arg --build-arg app=jirb

# To check container's health
HEALTCHCHECK [ARGS] [CMDs]