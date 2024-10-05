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

# to add a file from host or link
ADD text/*.txt hello;