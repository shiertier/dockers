FROM shiertier/cuda:12.3.2

ENV DEBIAN_FRONTEND=noninteractive TZ=Asia/Shanghai PIP_ROOT_USER_ACTION=ignore PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"
# 安装conda
# https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# https://repo.anaconda.com/miniconda/Miniconda3-py312_24.7.1-0-Linux-x86_64.sh
# https://repo.anaconda.com/miniconda/Miniconda3-py311_24.7.1-0-Linux-x86_64.sh
# https://repo.anaconda.com/miniconda/Miniconda3-py310_24.7.1-0-Linux-x86_64.sh
# https://repo.anaconda.com/miniconda/Miniconda3-py39_24.7.1-0-Linux-x86_64.sh
# https://repo.anaconda.com/miniconda/Miniconda3-py38_23.11.0-2-Linux-x86_64.sh
# https://repo.anaconda.com/miniconda/Miniconda3-py37_23.1.0-1-Linux-x86_64.sh

RUN cd /root && wget https://repo.anaconda.com/miniconda/Miniconda3-py312_24.7.1-0-Linux-x86_64.sh && \
    bash *.sh -b -u && ~/miniconda3/bin/conda init bash && rm -rf Miniconda3* ~/.cache && \
    pip install --no-cache-dir tensorboard jupyterlab jupyterlab-language-pack-zh-CN
