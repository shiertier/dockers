FROM shiertier/cuda-py:cu11.5-py38

RUN pip install --no-cache-dir torch==1.11.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu115
