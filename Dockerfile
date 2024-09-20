FROM shiertier/cuda-py:cu11.6-py39
RUN python -m pip install paddlepaddle-gpu==2.4.2.post116 -f https://www.paddlepaddle.org.cn/whl/linux/mkl/avx/stable.html --no-cache-dir
