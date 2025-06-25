#!/bin/bash

# srun --partition=researchlong --gres=gpu:1 --constraint=a100 python -u train_reference_model.py --robust_eps 8 --reference_path ./reference_model
# srun --partition=researchlong --gres=gpu:1 python -u get_centroid.py --robust_eps 8 
# srun --partition=researchlong --gres=gpu:1 python -u poison_generate.py --eps 8 --robust_eps 8  --recipe pull --poison_path './AT_C10_noise_8_8_pull'
# srun --partition=researchlong --gres=gpu:1 python -u poison_generate.py --eps 8 --robust_eps 8  --recipe push --poison_path './AT_C10_noise_8_8_push'

# srun --partition=researchlong --gres=gpu:1 --constraint=a100 python -u train_reference_model.py --dataset CIFAR100 --eps 8 --robust_eps 8 --reference_path ./reference_model
# srun --partition=researchlong --gres=gpu:1 python -u get_centroid.py --dataset CIFAR100 --eps 8 --robust_eps 8
# srun --partition=researchlong --gres=gpu:1 python -u poison_generate.py --dataset CIFAR100 --num_classes 100 --eps 8 --robust_eps 8 --recipe pull --poison_path './AT_C100_noise_8_8_pull'
srun --partition=researchlong --gres=gpu:1 python -u poison_generate.py --dataset CIFAR100 --num_classes 100 --eps 8 --robust_eps 8 --recipe push --poison_path './AT_C100_noise_8_8_push'


# srun --partition=researchlong --gres=gpu:1 --constraint=a100 python -u train_reference_model.py --dataset TinyImageNet --eps 8 --robust_eps 8 --reference_path ./reference_model
# srun --partition=researchlong --gres=gpu:1 python -u get_centroid.py --dataset TinyImageNet --eps 8 --robust_eps 8
# srun --partition=researchlong --gres=gpu:1 python -u poison_generate.py --dataset TinyImageNet --num_classes 200 --eps 8 --robust_eps 8 --recipe pull --poison_path './AT_T_noise_8_8_pull'
# srun --partition=researchlong --gres=gpu:1 python -u poison_generate.py --dataset TinyImageNet --num_classes 200 --eps 8 --robust_eps 8 --recipe push --poison_path './AT_T_noise_8_8_push'

read -p "Press Enter to exit..."
