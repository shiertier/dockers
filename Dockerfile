FROM shiertier/cuda-py:cu11.1-py37

RUN pip install --no-cache-dir torch==1.9.1 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu111
