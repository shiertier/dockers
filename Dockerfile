FROM shiertier/cuda-py:cu11.3-py39

RUN pip install --no-cache-dir torch==1.10.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu111
