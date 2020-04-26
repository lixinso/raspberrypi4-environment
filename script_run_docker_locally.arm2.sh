docker build -t ubuntu16_arm2:v1 . -f Dockerfile.arm2
docker run -it --rm -e "PORT=8888" -v $PWD:/myworkdir -v /data2:/data2  -p 0.0.0.0:8888:8888 --name ubuntu16_arm2 ubuntu16_arm2:v1
