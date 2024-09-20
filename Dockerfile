FROM shiertier/cuda-py:cu11.8-py311
RUN pip install --no-cache-dir tensorflow==2.14.0 tensorboard
