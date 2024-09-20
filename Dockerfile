FROM shiertier/cuda-py:cu11.8-py39
RUN pip install --no-cache-dir tensorflow==2.12.0 tensorboard
