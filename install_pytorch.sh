# https://schweter.eu/2017/11/pytorch-arm64.html
# https://pytorch.org/get-started/locally/#anaconda
# https://github.com/pytorch/pytorch#from-source
# https://gist.github.com/dusty-nv/ef2b372301c00c0a9d3203e42fd83426
# https://forums.developer.nvidia.com/t/pytorch-for-jetson-nano-version-1-5-0-now-available/72048
# https://github.com/nmilosev/pytorch-arm-builds
# https://nmilosev.svbtle.com/compling-arm-stuff-without-an-arm-board-build-pytorch-for-the-raspberry-pi
git clone --recursive https://github.com/pytorch/pytorch
export NO_CUDA=1
python3 setup.py install --user

# NOT WORKING


# --------------------
Other options: https://hub.docker.com/r/shenxn/pytorch-pi
