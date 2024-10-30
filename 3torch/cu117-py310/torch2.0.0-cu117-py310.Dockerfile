FROM shiertier/base:cuda11.7.1-py310
RUN pip install --no-cache-dir torch==2.0.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu117 && \
    cd /root && wget https://raw.githubusercontent.com/shiertier/chenyu_start/main/start.sh && chmod +x /root/start.sh
CMD ["bash", "/root/start.sh"]