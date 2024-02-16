#!/bin/bash

#SBATCH --output=setting1_classes5_mixtree_500.out
#SBATCH --job-name=setting1_classes5_mixtree_500
#SBATCH --open-mode=truncate 
#SBATCH --time=14-0:0:0 
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=8G
#SBATCH --gpus=1 
#SBATCH --gres=gpumem:20G 
#SBATCH --cpus-per-task=4

python train.py task=panoptic data=panoptic/treeins_set1_treemix3d_pd500 models=panoptic/FORpartseg_3heads model_name=PointGroup-PAPER training=mixtree_500 job_name=setting1_classes5_mixtree_500