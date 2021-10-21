FROM tensorflow/tensorflow:2.4.1-gpu-jupyter

RUN sudo apt-get update -y && sudo apt-get upgrade -y &&\
  sudo apt-get install curl unzip mecab mecab-ipadic-utf8 libmecab-dev swig -y &&\
  sudo apt-get autoremove -y &&\
  sudo apt-get clean &&\
  rm -rf /usr/local/src/*

COPY requirements.txt requirements.txt
RUN pip install -U pip &&\
  pip install --no-cache-dir -r requirements.txt