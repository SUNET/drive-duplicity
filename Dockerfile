FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y \
    duplicity \
    wget
RUN wget https://downloads.rclone.org/v1.69.0/rclone-v1.69.0-linux-amd64.deb
RUN dpkg -i rclone-v1.69.0-linux-amd64.deb

CMD ["duplicity"]


