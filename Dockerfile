FROM shiertier/cuda-py:cu11.8-py310

RUN pip install --no-cache-dir torch==2.0.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
