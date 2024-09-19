FROM nvidia/cuda:11.4.3-cudnn8-devel-ubuntu20.04

ENV DEBIAN_FRONTEND=noninteractive TZ=Asia/Shanghai PIP_ROOT_USER_ACTION=ignore
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo '$TZ' > /etc/timezone && \
    rm -rf /etc/apt/sources.list.d/cuda* /etc/apt/sources.list.d/* && gpg --keyserver keyserver.ubuntu.com --recv-keys A4B469963BF863CC 2>&1 > /dev/null && \
    gpg --export --armor A4B469963BF863CC | apt-key add - 2>&1 > /dev/null && apt-get update && \
    apt-get install -y tmux screen vim wget curl net-tools apt-utils unzip zip git openssl libaio1 libaio-dev iputils-ping openssh-server openssh-client && \
    apt-get install -y git-lfs libssl-dev make gcc libffi-dev libbz2-dev software-properties-common nginx lsof iftop htop tcpdump sysstat && \
    apt-get install -y locate cmake g++ build-essential zlib1g-dev libncurses5-dev libgdbm-dev language-pack-zh-hans tree libgl1 libglib2.0-0 && \
    apt-get install -y libnss3-dev libreadline-dev libsqlite3-dev libjpeg-dev && \
    apt-get install -y build-essential liblzma-dev pkg-config libnuma-dev libgl1-mesa-glx xvfb && \
    apt-get install -y libssh2-1-dev ca-certificates libfreetype6-dev mlocate swig llvm libncursesw5-dev tk-dev && \
    apt-get install -y build-essential yasm libnss3 sudo psmisc sox libsox-dev ffmpeg libavdevice-dev libtcmalloc-minimal4 bc openjdk-8-jdk && \
    git lfs install && \
    apt-get install -y openmpi-bin openmpi-common libopenmpi-dev && apt-get clean && rm -rf /var/lib/apt/lists/* && \
    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null && \
    apt-get update && apt-get install gh && apt-get clean && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/*
