# Must manually install Hugo, as the official image is very out of date: https://hub.docker.com/r/gohugoio/hugo
FROM debian:bookworm AS build

RUN apt-get update && \
    apt-get install -y wget

RUN wget https://github.com/gohugoio/hugo/releases/download/v0.134.1/hugo_0.134.1_linux-amd64.deb && \
    echo "1e4a2d3fb13716b84d30cac4bfc80efa15f2734c4bfff5402b019bb6b65fc136  hugo_0.134.1_linux-amd64.deb" > checksum.txt && \
    sha256sum -c checksum.txt && \
    dpkg -i hugo_0.134.1_linux-amd64.deb

COPY commons-conservancy /cc

RUN cd /cc && \
    hugo

FROM nginxinc/nginx-unprivileged:stable

COPY --from=build /cc/public /usr/share/nginx/html
