FROM debian:bullseye

RUN apt-get update && \
        apt-get install -y ninja-build \
        git \
        gettext \
        libtool \
        libtool-bin \
        autoconf \
        automake \
        cmake \
        g++ \
        pkg-config \
        unzip && \
        git clone https://github.com/neovim/neovim /neovim && \
        cd /neovim && make CMAKE_BUILD_TYPE=Release && make CMAKE_INSTALL_PREFIX=/nvim install
