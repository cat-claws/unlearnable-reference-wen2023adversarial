# An unlearnable

> **Note:** This is a **cleaned-up and fixed version** of the original repository by [Wen et al.](https://openreview.net/pdf?id=zKvm1ETDOq).

**Important Clarification:**  
The original implementation **did not include support for TinyImageNet**, even though it is discussed in the paper.  
Additionally, many of the training and evaluation commands were **incomplete or missing entirely**.

This repository **fixes those issues** and includes:

- Complete support for TinyImageNet
- Full training and evaluation scripts
- Cleaned-up and clarified configurations
- Compatibility updates and bug fixes

To **review the specific changes**, refer to the commit history:  
[**View commit differences here**](https://github.com/WenRuiUSTC/EntF/commit/c83145fd87efb028b1f4e5cb76b8c703f4ce37d6)  


## Usage

### Step 1: Train the reference model using clean data

 ```
 python -u train_reference_model.py --dataset TinyImageNet --eps 8 --robust_eps 8 --reference_path ./reference_model
 ``` 
 You can control the robustness of the reference model by ajusting ```--robust_eps``` parameter.
 The reference model will be saved at ```--reference_path```.
 This file can also be used to evaluate the attack performance, with poisoned data as input.

### Step 2: Calculate the centroid for each class

 ```
 python -u get_centroid.py --dataset TinyImageNet --eps 8 --robust_eps 8 --centroid_path ./centroid
 ```
 The centroid will be saved at ```--centroid_path```

### Step 3: Generate poisons

 ```
 poison_generate.py --dataset TinyImageNet --eps 8 --robust_eps 8 --recipe push --poison_path './AT_T_noise_8_8_push
 ```
 The poison budget can be controlled by adjusting ```--eps```.
 You can select the poisoning method by setting ```--recipe push``` corresponding to EntF-Push or ```--recipe pull``` corresponding to EntF-Pull.

