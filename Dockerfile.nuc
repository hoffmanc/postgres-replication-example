FROM postgres:13

RUN apt-get update && apt-get install -y \
  python \
  curl \
  && rm -rf /var/lib/apt/lists/*

RUN curl -sSL https://sdk.cloud.google.com > /gcinstall.sh \
  && bash /gcinstall.sh --install-dir=/ \
  && rm /gcinstall.sh

