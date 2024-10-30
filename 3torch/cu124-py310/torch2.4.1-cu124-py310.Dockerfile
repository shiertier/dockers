FROM shiertier/base:cuda12.4.1-py310
RUN pip install --no-cache-dir torch==2.4.1 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124 && \
    rm -rf /root/start.sh && \
    cd /root && wget https://raw.githubusercontent.com/shiertier/chenyu_start/main/start.sh && chmod +x /root/start.sh
CMD ["bash", "/root/start.sh"]