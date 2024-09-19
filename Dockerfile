FROM shiertier/cuda-py:cu12.1-py311

RUN pip install --no-cache-dir torch==2.3.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
