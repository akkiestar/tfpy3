FROM tensorflow/tensorflow:1.12.0-rc1-devel-gpu-py3

RUN apt-get update

RUN pip3 install --upgrade  pip

# for opencv
RUN apt-get -y install build-essential \
pkg-config \
libjpeg-dev \
libpng12-dev \
libtiff5-dev \
libopenexr-dev \
libavcodec-dev \
libavformat-dev \
yasm \
libfaac-dev \
libopencore-amrnb-dev \
libopencore-amrwb-dev \
libtheora-dev \
libvorbis-dev \
libxvidcore-dev \
libx264-dev \
libswscale-dev \
libjasper-dev \
libdc1394-22-dev \
libv4l-dev \
libgstreamer1.0-dev \
libgstreamer-plugins-base0.10-dev \
libgstreamer-plugins-base1.0-dev \
libtbb2 \
libtbb-dev \
libeigen3-dev

RUN pip3 install --upgrade \
scipy \
jupyterlab \
pandas \
scikit-image \
opencv-python \
scikit-learn  \
keras \
pydot

RUN apt-get -y install vim \
tmux \
libsm6 \
libxext6 \
libxrender-dev \
graphviz

EXPOSE 8888
EXPOSE 6006
