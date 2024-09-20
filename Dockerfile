FROM shiertier/cuda-py:cu11.8-py38
RUN python -m pip install paddlepaddle-gpu==2.6.1.post118 -f https://www.paddlepaddle.org.cn/whl/linux/mkl/avx/stable.html --no-cache-dir
