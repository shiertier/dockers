FROM shiertier/base:cuda11.8.0-py38
RUN pip install --no-cache-dir torch==2.1.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118 && \
    cd /root && wget https://raw.githubusercontent.com/shiertier/chenyu_start/main/start.sh && chmod +x /root/start.sh
CMD ["bash", "/root/start.sh"]