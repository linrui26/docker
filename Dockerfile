FROM nvidia/cuda:11.7.1-devel-ubuntu20.04

ENV PYTHON_VERSION=3.9

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y tzdata \
    && ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && dpkg-reconfigure --frontend noninteractive tzdata
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*

# 添加Debian的Python 3.9源并安装Python 3.9及pip
RUN add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y \
        python${PYTHON_VERSION} \
        python${PYTHON_VERSION}-dev \
        python${PYTHON_VERSION}-distutils \
        python${PYTHON_VERSION}-pip \
    && rm -rf /var/lib/apt/lists/*

# 设置Python 3.9为默认Python版本
RUN update-alternatives --install /usr/bin/python python /usr/bin/python${PYTHON_VERSION} 1
RUN update-alternatives --install /usr/bin/pip pip /usr/bin/pip${PYTHON_VERSION} 1

# 安装其他必要的依赖
RUN pip install --upgrade pip setuptools wheel

# 安装PyTorch 1.13.1及相关库
RUN pip install torch==1.13.1+cu117 torchvision==0.14.1+cu117 torchaudio==0.13.1 --extra-index-url https://download.pytorch.org/whl/cu117

RUN pip install easydict>=1.9
RUN pip install opencv-python>=4.5.0
RUN pip install timm>=0.4.10
RUN pip install scipy>=1.7.0
RUN pip install tqdm>=4.40.0
RUN pip install tensorboardX>=2.2
RUN pip install packaging
RUN pip install timm==0.4.12
RUN pip install pytest 
RUN pip install chardet 
RUN pip install yacs 
RUN pip install termcolor
RUN pip install submitit 
RUN pip install tensorboardX
RUN pip install fvcore
RUN pip install seaborn

## PolarBEV
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
