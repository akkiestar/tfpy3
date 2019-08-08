FROM tensorflow/tensorflow:latest-devel-gpu-py3

RUN pip3 install --upgrade  pip

# for opencv
RUN apt-get update && \
apt-get install -y \
libglib2.0-0 \
libsm6 \
libxrender1 \
libxext6

RUN pip3 install --upgrade \
scipy \
jupyterlab \
pandas \
scikit-image \
opencv-python \
scikit-learn  \
keras \
pydot \
joblib \
matplotlib \
seaborn


RUN apt-get -y install vim \
tmux \
libsm6 \
libxext6 \
libxrender-dev \
graphviz

EXPOSE 8888
EXPOSE 6006
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22


