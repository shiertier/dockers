FROM shiertier/cuda-py:cu11.2-py310
RUN pip install --no-cache-dir tensorflow==2.8.0 tensorboard
