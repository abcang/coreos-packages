FROM fedora

MAINTAINER abcang <abcang1015@gmail.com>

RUN dnf install -y @development-tools glibc-static ncurses-static openssl-static bison

ARG libevent_version="2.1.12"

RUN curl https://github.com/libevent/libevent/releases/download/release-${libevent_version}-stable/libevent-${libevent_version}-stable.tar.gz -L -o libevent-${libevent_version}-stable.tar.gz
RUN tar zxf libevent-${libevent_version}-stable.tar.gz
WORKDIR /libevent-${libevent_version}-stable

RUN ./configure --disable-shared && make && make install

WORKDIR /

ARG version="3.1c"

RUN curl https://github.com/tmux/tmux/releases/download/${version}/tmux-${version}.tar.gz -L -o tmux-${version}.tar.gz
RUN tar zxvf tmux-${version}.tar.gz

WORKDIR /tmux-${version}

ADD install.sh /

ENTRYPOINT ["/install.sh"]
