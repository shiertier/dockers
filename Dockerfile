FROM shiertier/cuda-py:cu11.2-py39

RUN pip install --no-cache-dir tensorflow==2.6.0 tensorboard
