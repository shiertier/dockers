FROM shiertier/cuda-py:cu12.3-py39
RUN pip install --no-cache-dir tensorflow==2.16.1 tensorboard
