FROM shiertier/cuda-py:cu11.8-py312

RUN pip install --no-cache-dir torch==2.2.1 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
