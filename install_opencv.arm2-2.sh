


# to get your administation in order
apt-get update
apt-get upgrade
# now we can get the whole lot
apt-get install -y  build-essential cmake git unzip pkg-config
apt-get install -y libjpeg-dev libpng-dev libtiff-dev
apt-get install -y libavcodec-dev libavformat-dev libswscale-dev
apt-get install -y libgtk2.0-dev libcanberra-gtk*
apt-get install -y libxvidcore-dev libx264-dev
apt-get install -y python3-dev python3-numpy python3-pip
apt-get install -y python-dev python-numpy
apt-get install -y libtbb2 libtbb-dev libdc1394-22-dev
apt-get install -y libv4l-dev v4l-utils
apt-get install -y libopenblas-dev libatlas-base-dev libblas-dev
apt-get install -y liblapack-dev gfortran libhdf5-dev
apt-get install -y libprotobuf-dev libgoogle-glog-dev libgflags-dev
apt-get install -y gcc-arm*
apt-get install -y protobuf-compiler






# download OpenCV 4.2.0
cd ~
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.2.0.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.2.0.zip
# upzip both packages
unzip opencv.zip
unzip opencv_contrib.zip
# rename the folders
mv opencv-4.2.0 opencv
mv opencv_contrib-4.2.0 opencv_contrib
# finally, make the build directory
cd opencv
mkdir build
cd build


cmake -D CMAKE_BUILD_TYPE=RELEASE \
        -D CMAKE_INSTALL_PREFIX=/usr/local \
        -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
        -D ENABLE_NEON=ON \
        -D BUILD_TIFF=ON \
        -D WITH_FFMPEG=ON \
        -D WITH_GSTREAMER=ON \
        -D WITH_TBB=ON \
        -D BUILD_TBB=ON \
        -D BUILD_TESTS=OFF \
        -D WITH_EIGEN=OFF \
        -D WITH_V4L=ON \
        -D WITH_LIBV4L=ON \
        -D WITH_VTK=OFF \
        -D OPENCV_ENABLE_NONFREE=ON \
        -D INSTALL_C_EXAMPLES=OFF \
        -D INSTALL_PYTHON_EXAMPLES=OFF \
        -D BUILD_NEW_PYTHON_SUPPORT=ON \
        -D BUILD_opencv_python3=TRUE \
        -D OPENCV_GENERATE_PKGCONFIG=ON \
        -D BUILD_EXAMPLES=OFF ..


make -j4
# install the libraries
make install
ldconfig
apt-get update

