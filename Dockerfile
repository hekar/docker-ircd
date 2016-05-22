FROM fedora

MAINTAINER Hekar Khani <hekark@gmail.com>

RUN dnf install -y ngircd

# expose IRC ports
EXPOSE :443
EXPOSE :6664
EXPOSE :6667

add start.sh /start.sh
add ngircd.conf /etc/ngircd.conf
add ngircd.motd /etc/ngircd.motd

CMD ["/start.sh"]
