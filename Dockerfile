FROM shiertier/cuda-py:cu11.8-py38

RUN pip install --no-cache-dir torch==2.4.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
