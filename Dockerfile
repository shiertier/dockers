FROM shiertier/cuda-py:cu11.1-py38

RUN pip install --no-cache-dir torch==1.10.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu111
