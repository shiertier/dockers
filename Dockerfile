FROM shiertier/cuda-py:cu11.8-py37

RUN pip install --no-cache-dir torch==2.4.1 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
