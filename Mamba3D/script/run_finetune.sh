# GPU_ID=1
# PATH_CKPT= # path to ckpt

# # ScanObjectNN
# CUDA_VISIBLE_DEVICES=$GPU_ID python main.py \
# --config cfgs/finetune_scan_objonly.yaml \
# --finetune_model \
# --exp_name Mamba3D_objonly_finetune \
# --ckpts $PATH_CKPT

# # ModelNet40 1K
# # CUDA_VISIBLE_DEVICES=$GPU_ID python main.py \
# # --config cfgs/finetune_modelnet.yaml \
# # --finetune_model \
# # --exp_name Mamba3D_modelnet_finetune \
# # --ckpts $PATH_CKPT

#!/bin/bash
#!/bin/bash
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/nvidia/lib:/usr/local/nvidia/lib64

GPU_ID=0
PATH_CKPT=./models/pretrained/ScanObjectNN_PointMAE/ckpt-best.pth

echo "LD_LIBRARY_PATH = $LD_LIBRARY_PATH"
echo "CUDA_HOME = $CUDA_HOME"
echo "Python path:" $(which python)

CUDA_VISIBLE_DEVICES=$GPU_ID python main.py \
  --config cfgs/finetune_cidis_bananos.yaml \
  --finetune_model \
  --exp_name Mamba3D_cidis_bananos \
  --ckpts $PATH_CKPT
