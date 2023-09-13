FROM debian:trixie-slim


RUN apt-get update && \
    apt-get install seafile-cli -yy && \
    rm -rf /var/cache/apt/archives \
           /var/lib/apt/lists
RUN useradd -NMr -u 7777 -s /bin/bash seafile
