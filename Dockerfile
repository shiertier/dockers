FROM shiertier/cuda-py:cu12.3-py312
RUN python -m pip install paddlepaddle-gpu==3.0.0b1 -f https://www.paddlepaddle.org.cn/whl/linux/mkl/avx/stable.html --no-cache-dir
