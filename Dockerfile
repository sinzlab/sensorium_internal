FROM sinzlab/pytorch:v3.8-torch1.7.0-cuda11.0-dj0.12.7
WORKDIR /src
RUN python3.8 -m pip install --upgrade pip
ADD . /project
RUN python3.8 -m pip install -e /project
RUN python3.8 -m pip install numpy==1.22.0
WORKDIR /notebooks

