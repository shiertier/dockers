FROM shiertier/cuda-py:cu11.0-py38
RUN python -m pip install paddlepaddle-gpu==2.2.2.post110 -f https://www.paddlepaddle.org.cn/whl/linux/mkl/avx/stable.html --no-cache-dir 
