# browscap-builder-docker
A docker container used to build https://browscap.org browser detection files.

# usage

Step 1: cd in destination directory and creat a build directory:
```
cd /path/to/destination/directory/
mkdir build
```
Step 2: run the container:
```
docker run -it -v ./build:/src/browscap/build --rm cvalerio77/browscap-builder-docker
```
The files will be placed in the build directory created at step 1. IT WILL TAKE ITS TIME, BE PATIENT!

# notes

Thanks to https://github.com/Alexwijn for his docker-git-php-composer image.