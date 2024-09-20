FROM shiertier/cuda-py:cu11.0-py38

RUN pip install --no-cache-dir torch==1.7.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu110
