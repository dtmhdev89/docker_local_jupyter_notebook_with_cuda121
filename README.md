# Running jupyter notebook in docker with cuda121
This repo is focus on running jupyter notebook in docker on **cuda supported machine**.
## Machine info:
- OS: Ubuntu 22.04
- Platform: x86_64
- Cuda version 12.1

# Instruction:
- Step 1: Install docker engine for Ubuntu (Note: not using docker desktop). Ref: https://docs.docker.com/engine/install/ubuntu/
- Step 2: Install cuda container toolkit that enable gpu support on docker
Following https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html at Installing with Apt and Configuring Docker Steps
- Step 3: Run a sample to see if it works:
  `sudo docker run --rm --runtime=nvidia --gpus all ubuntu nvidia-smi`
- Step 4: Build image
  `docker compose build`

  _if building with sudo_:
  `sudo docker compose build`

  _if building with TAG_
  `TAG=v1.0 docker compomse build`
  
- Step 5: Start container
  `docker compose up`

  if running with daemon:
  `docker compose up -d`
