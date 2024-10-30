FROM shiertier/base:cuda11.8.0-py311
RUN pip install --no-cache-dir torch==2.1.1 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118 && \
    rm -rf /root/start.sh && \
    cd /root && wget https://raw.githubusercontent.com/shiertier/chenyu_start/main/start.sh && chmod +x /root/start.sh
CMD ["bash", "/root/start.sh"]