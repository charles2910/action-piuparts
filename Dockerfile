FROM debian:sid

RUN apt-get update && apt-get install -y --no-install-recommends piuparts docker.io

RUN printenv

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
