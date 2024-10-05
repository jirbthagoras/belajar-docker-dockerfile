# import a image
FROM alpine:3

# Run a command in build process
RUN mkdir hello
RUN echo "Hello World" > "hello/hello-world.txt"

# Run a command after the image is running in container
CMD cat "hello/hello-world.txt"