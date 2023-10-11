FROM fedora:38

WORKDIR /app

RUN dnf update -y
RUN dnf install rubygems -y
RUN gem install fpm 
RUN dnf install rpm-build squashfs-tools -y 
RUN dnf install python -y
RUN dnf install python3 -y
RUN dnf install python3-pip -y
RUN fpm -s python -t rpm mad-monkey
RUN fpm -s python -t deb mad-monkey

