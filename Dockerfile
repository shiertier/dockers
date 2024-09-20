FROM shiertier/cuda-py:cu11.2-py38
RUN pip install --no-cache-dir tensorflow==2.9.0 tensorboard
