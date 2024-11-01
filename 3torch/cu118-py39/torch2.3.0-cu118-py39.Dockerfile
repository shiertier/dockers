FROM shiertier/base:cuda11.8.0-py39
RUN pip install --no-cache-dir torch==2.3.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118 && \
    rm -rf /root/start.sh && \
    cd /root && wget https://raw.githubusercontent.com/shiertier/chenyu_start/main/start.sh && chmod +x /root/start.sh
CMD ["bash", "/root/start.sh"]