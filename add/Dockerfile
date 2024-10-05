# import a image
FROM alpine:3

# Run a command in build process
RUN mkdir elang

# to copy a file from host
ADD ./text/*.txt elang/

# Run a command after the image is running in container
CMD cat /elang/programmer.txt