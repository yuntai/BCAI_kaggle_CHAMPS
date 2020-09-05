ARG FROM_IMAGE_NAME=nvcr.io/nvidia/pytorch:20.07-py3
FROM ${FROM_IMAGE_NAME}

ADD requirements.txt /workspace/requirements.txt
WORKDIR /workspace

RUN pip install --no-cache-dir --ignore-installed -r requirements.txt
RUN sudo apt-get install python-rdkit librdkit1 rdkit-data
