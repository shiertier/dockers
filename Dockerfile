FROM shiertier/cuda-py:cu12.1-py39

RUN pip install --no-cache-dir torch==2.1.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
