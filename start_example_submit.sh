#!/bin/bash
#SBATCH -J <name>

module purge all  

module load python-anaconda3
eval "$(conda shell.bash hook)"
source activate slurm-py37-test

python --version 
python slurm_test.py
