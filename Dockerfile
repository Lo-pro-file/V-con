FROM python:3.9.2-slim-buster
ENV DEBIAN_FRONTEND=noninteractive
RUN apt -qq update && apt -qq install -y git ffmpeg
RUN git clone https://github.com/Lo-pro-file/V-con /app
WORKDIR /app
RUN pip3 install --no-cache-dir -r requirements.txt
CMD ["bash","run.sh"]
