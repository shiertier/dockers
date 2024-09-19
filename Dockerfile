FROM shiertier/cuda-py:cu11.3-py310

RUN pip install --no-cache-dir torch==1.12.1 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu113
