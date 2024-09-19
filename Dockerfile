FROM shiertier/cuda-py:cu12.1-py38

RUN pip install --no-cache-dir torch==2.3.1 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
