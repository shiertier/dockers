FROM shiertier/cuda-py:cu11.7-py39

RUN pip install --no-cache-dir torch==2.0.1 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu117
