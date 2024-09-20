FROM shiertier/cuda-py:cu11.0-py310
RUN python -m pip install --no-cache-dir paddlepaddle-gpu==2.2.2.post110 -f https://www.paddlepaddle.org.cn/whl/linux/mkl/avx/stable.html
