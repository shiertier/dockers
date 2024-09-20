FROM shiertier/cuda-py:cu11.0-py38

RUN pip install --no-cache-dir tensorflow==2.4.0 tensorboard
