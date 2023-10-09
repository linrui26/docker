FROM pytorch/pytorch:1.8.0-cuda11.1-cudnn8-devel

RUN apt-get update || apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN pip install efficientnet_pytorch==0.7.1
RUN pip install fvcore==0.1.5.post20220119
RUN pip install lyft_dataset_sdk==0.0.8
RUN pip install matplotlib==3.5.1
RUN pip install numpy==1.21.2
RUN pip install nuscenes_devkit==1.1.9
RUN pip install opencv_python==4.5.5.62
RUN pip install Pillow==9.2.0
RUN pip install pyquaternion==0.9.9
RUN pip install pytorch_lightning==1.2.5
RUN pip install scipy==1.7.3
RUN pip install torchmetrics==0.7.0
RUN pip install tqdm==4.62.3
