FROM shiertier/cuda-py:cu12.3-py312
RUN pip install --no-cache-dir tensorflow==2.16.1 tensorboard
