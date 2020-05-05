FROM fedora

MAINTAINER abcang <abcang1015@gmail.com>

RUN dnf install -y @development-tools glibc-static ncurses-static autoconf automake

ARG version="3.0.5"

RUN curl https://github.com/htop-dev/htop/archive/${version}.tar.gz -L -o htop-${version}.tar.gz
RUN tar zxvf htop-${version}.tar.gz

WORKDIR /htop-${version}

ADD install.sh /

ENTRYPOINT ["/install.sh"]
