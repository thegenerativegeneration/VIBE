#!/usr/bin/env bash

export CONDA_ENV_NAME=vibe-env
echo $CONDA_ENV_NAME

conda create -n $CONDA_ENV_NAME python=3.7

eval "$(conda shell.bash hook)"
conda activate $CONDA_ENV_NAME

which python
which pip

pip install numpy==1.22.4 torch==2.0.1 torchvision==0.15.2
pip install git+https://github.com/giacaglia/pytube.git --upgrade
pip install -r requirements.txt
