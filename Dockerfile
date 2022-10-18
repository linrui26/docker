FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-runtime
RUN pip install torchvision
RUN pip install tensorboardX
RUN pip install tensorboard
RUN pip install tensorflow
RUN pip install easydict
RUN pip install pandas
RUN pip install numpy
RUN pip install scipy
RUN pip install opencv-python
RUN pip install pyyaml
RUN pip install yacs
