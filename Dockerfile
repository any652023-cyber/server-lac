FROM ubuntu:22.04

WORKDIR /app
COPY . /app

RUN chmod +x /app/LAC_Linux_v1.9.6.x86_64

EXPOSE 7777/udp
EXPOSE 7777/tcp

CMD ["./LAC_Linux_v1.9.6.x86_64", "-batchmode", "-nographics"]
