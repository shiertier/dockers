FROM shiertier/cuda-py:cu11.7-py310

RUN pip install --no-cache-dir torch==1.13.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu117
