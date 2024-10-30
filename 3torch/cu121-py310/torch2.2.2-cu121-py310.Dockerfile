FROM shiertier/base:cuda12.1.1-pypy310
RUN pip install --no-cache-dir torch==2.2.2 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121 && \
    cd /root && wget https://raw.githubusercontent.com/shiertier/chenyu_start/main/start.sh && chmod +x /root/start.sh
CMD ["bash", "/root/start.sh"]