FROM shiertier/cuda-py:cu11.1-py37

RUN pip install --no-cache-dir torch==1.8.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu111
