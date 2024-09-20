FROM shiertier/cuda-py:cu11.7-py38
RUN python -m pip install paddlepaddle-gpu==2.6.1.post117 -f https://www.paddlepaddle.org.cn/whl/linux/mkl/avx/stable.html --no-cache-dir
