# This is a comment
# Use a lightweight debian os
# as the base image
FROM debian:stable-slim

# COPY source destination
COPY goserver /bin/goserver
CMD ["/bin/goserver"]

# Make a var inside the dockerfile
ENV PORT=8080


