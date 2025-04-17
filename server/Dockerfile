# ------------------------------------------------------------
# ビルドステージ
# ------------------------------------------------------------
FROM ubuntu:22.04 AS build

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates \
  g++ \
  git \
  libflatbuffers-dev \
  liblmdb-dev \
  libsecp256k1-dev \
  libssl-dev \
  libtool \
  libzstd-dev \
  make \
  pkg-config \
  zlib1g-dev \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp
RUN git clone --recurse-submodules https://github.com/hoytech/strfry && \
  cd strfry && \
  make setup-golpe && \
  make -j"$(nproc)"

# ------------------------------------------------------------
# 実行ステージ
# ------------------------------------------------------------
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
  libb2-1 \
  libflatbuffers1 \
  liblmdb0 \
  libsecp256k1-0 \
  libzstd1 \
  && rm -rf /var/lib/apt/lists/*

COPY --from=build /tmp/strfry /usr/local/bin
COPY strfry.conf /etc/strfry.conf

EXPOSE 8080

RUN mkdir -p /tmp/db

CMD ["strfry", "relay"]
