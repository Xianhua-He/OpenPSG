#!/bin/bash
# sh scripts/vctree/train_panoptic_fpn_r50_sgdet.sh

GPU=2
CPU=12
node=73
PORT=29500
jobname=openpsg

#PYTHONPATH='.':$PYTHONPATH \
#srun -p dsta --mpi=pmi2 --gres=gpu:${GPU} -n1 --ntasks-per-node=${GPU} \
#--kill-on-bad-exit=1 --job-name=${jobname} -w SG-IDC1-10-51-2-${node} \
PYTHONPATH='.':$PYTHONPATH \
python tools/train.py \
  configs/vctree/panoptic_fpn_r50_fpn_1x_sgdet_psg.py
