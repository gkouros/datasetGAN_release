#!/bin/bash

export PYTHONPATH=$PWD

source ~/miniconda3/etc/profile.d/conda.sh
conda activate datasetGAN

cd /users/visics/gkouros/projects/nerf-repos/datasetGAN/datasetGAN

python train_deeplab.py --exp ./experiments/car_20.json --data_path ./checkpoints/interpreter_checkpoint/car_20/samples

conda deactivate
