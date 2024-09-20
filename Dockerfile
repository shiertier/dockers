FROM shiertier/cuda-py:cu11.0-py37

RUN pip install --no-cache-dir torch==1.7.1 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu110
