FROM shiertier/cuda-py:cu11.1-py38
RUN python -m pip install paddlepaddle-gpu==2.3.2.post111 -f https://www.paddlepaddle.org.cn/whl/linux/mkl/avx/stable.html --no-cache-dir 
