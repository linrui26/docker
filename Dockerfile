FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-devel

RUN apt-get update || apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN pip install opencv-python
RUN pip install pyquaternion
RUN pip install shapely
RUN pip install lmdb
RUN pip install nuscenes-devkit
RUN pip install tensorboard
RUN pip install easydict
