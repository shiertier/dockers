FROM shiertier/cuda-py:cu12.2-py39
RUN pip install --no-cache-dir tensorflow==2.15.0 tensorboard
