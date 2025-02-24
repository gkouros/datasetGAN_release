#!/bin/bash

export PYTHONPATH=$PWD

source ~/miniconda3/etc/profile.d/conda.sh
conda activate datasetGAN

cd /users/visics/gkouros/projects/nerf-repos/datasetGAN/datasetGAN

python train_interpreter.py --exp ./experiments/car_20.json --resume ./checkpoints/interpreter_checkpoint/car_20 --num_sample 10000 --start_step 0 --generate_data True

conda deactivate
