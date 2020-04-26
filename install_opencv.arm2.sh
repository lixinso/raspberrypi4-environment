# https://pysource.com/2019/08/26/install-opencv-4-1-on-nvidia-jetson-nano/

apt update
apt install -y build-essential cmake git libgtk2.0-dev pkg-config  libswscale-dev libtbb2 libtbb-dev
apt install -y python-dev python3-dev python-numpy python3-numpy
apt install -y curl

apt install -y  libjpeg-dev libpng-dev libtiff-dev libjasper-dev
apt install -y libavcodec-dev libavformat-dev
apt install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
apt install -y libv4l-dev v4l-utils qv4l2 v4l2ucp libdc1394-22-dev

apt install -y wget unzip

cd ~

curl -L https://github.com/opencv/opencv/archive/4.1.0.zip -o opencv-4.1.0.zip
curl -L https://github.com/opencv/opencv_contrib/archive/4.1.0.zip -o opencv_contrib-4.1.0.zip

unzip opencv-4.1.0.zip
unzip opencv_contrib-4.1.0.zip
cd opencv-4.1.0/


mkdir release
cd release/

cmake     -D WITH_CUDA=ON \
        -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-4.1.0/modules \
        -D WITH_GSTREAMER=ON \
        -D WITH_LIBV4L=ON \
        -D BUILD_opencv_python2=ON \
        -D BUILD_opencv_python3=ON \
        -D BUILD_TESTS=OFF \
        -D BUILD_PERF_TESTS=OFF \
        -D BUILD_EXAMPLES=OFF \
        -D CMAKE_BUILD_TYPE=RELEASE \
        -D CMAKE_INSTALL_PREFIX=/usr/local ..


#make -j4
#make install
