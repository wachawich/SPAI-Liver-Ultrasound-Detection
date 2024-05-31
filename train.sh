#!/bin/bash
#SBATCH -p gpu                # Specify partition [Compute/Memory/GPU]
#SBATCH -N 1 -c 16                 # Specify number of nodes and processors per task
#SBATCH --gpus-per-task=4            # Specify the number of GPUs
#SBATCH --ntasks-per-node=1        # Specify tasks per node
#SBATCH -t 12:00:00            # Specify maximum time limit (hour: minute: second)
#SBATCH -A ltid           # Specify project name
#SBATCH -J DNY        # Specify job name

module reset
module load Mamba
module load cudatoolkit/23.3_12.0

conda deactivate
conda activate /lustrefs/wachi/mytorch

#  \ 

yolo task=detect mode=train epochs=80 batch=128 plots=True \
 model='./-q/yolov10x.pt' \
 data='./dataset/training_data/dataset.yaml' device=[0,1,2,3] \