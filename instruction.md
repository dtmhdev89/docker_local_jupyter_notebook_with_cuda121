# 1. To add a new kernel:
**STEPS:**
- step1: Access terminal in jupyter notebook using **New Launcher**, then select Terminal
- step2: the Terminal will deafault in `sh` shell. Input: `bash` to change to bash shell
- step3: input command:
  ```
  ./add_kernel_conda.sh <replace with your env_name> <replace with your kernel_name> <replace with kernel display name>
  ```
  
  ```
  eg: ./add_kernel_conda.sh venv-pytorch venv-pytorch 'Pytorch Kernel'
  ```
- step4: reload jupyter notebook in browser for updating your new kernel.

# 2. To install libs only in current kernel:
I tried many ways, but only this one worked with current setup. You can try yourself to find if any better:

```
# In notebook cell:
import sys
!{sys.executable} -m pip install somepackage
```

# 3. To remove conda env and kernel env:

**STEPS**

- step1: Access terminal in jupyter notebook using **New Launcher**, then select Terminal
- step2: the Terminal will deafault in `sh` shell. Input: `bash` to change to bash shell
- step3: input command:
  ```
  ./remove_env_and_kernel.sh <replace with your env_name> <replace with your kernel_name>
  ```
  
  ```
  eg: ./add_kernel_conda.sh venv-pytorch venv-pytorch
  ```
- step4: reload jupyter notebook in browser for updating your new kernel.