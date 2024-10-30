FROM shiertier/base:cuda12.1.1-py39
RUN pip install --no-cache-dir torch==2.2.2 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121 && \
    rm -rf /root/start.sh && \
    cd /root && wget https://raw.githubusercontent.com/shiertier/chenyu_start/main/start.sh && chmod +x /root/start.sh
CMD ["bash", "/root/start.sh"]