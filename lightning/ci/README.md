# Docker image for Lightning CI builds

This image is used to build and test `lightningd` in our CI
environment. The main reason we are using this instead of one of the
stock images is that we can skip the installation of dependencies with
the image.
