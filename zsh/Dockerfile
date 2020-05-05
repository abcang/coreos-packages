FROM fedora

MAINTAINER abcang <abcang1015@gmail.com>

RUN dnf install -y @development-tools glibc-static ncurses-static xz autoconf

ARG version="5.8"

RUN curl https://sourceforge.net/projects/zsh/files/zsh/${version}/zsh-${version}.tar.xz/download -L -o zsh-${version}.tar.xz
RUN tar Jxvf zsh-${version}.tar.xz

WORKDIR /zsh-${version}

ADD install.sh /

ENTRYPOINT ["/install.sh"]
