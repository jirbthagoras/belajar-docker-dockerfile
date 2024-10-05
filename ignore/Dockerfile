# import a image
FROM alpine:3

# Run a command in build process
RUN mkdir hello

# to copy a file from host
ADD ./text/* hello/

# Run a command after the image is running in container
RUN ls -l hello