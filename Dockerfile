FROM ubuntu AS ubuntu

RUN apt-get update
RUN apt-get install -y --no-install-recommends ca-certificates git zsh vim

ENV HOME /root
ADD . ${HOME}/config

RUN cd ${HOME}/config ; zsh -f ./init.sh


FROM archlinux AS arch

RUN pacman -S --noconfirm git zsh vim

ENV HOME /root
ADD . ${HOME}/config

RUN cd ${HOME}/config ; zsh -f ./init.sh