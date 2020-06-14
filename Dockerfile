FROM ubuntu AS base-ubuntu

RUN apt-get update
RUN apt-get install -y --no-install-recommends ca-certificates git zsh vim

ENV HOME /root
ADD . ${HOME}/config

# ----
FROM base-ubuntu
RUN cd ${HOME}/config ; zsh -f ./init.sh

# ----
FROM base-ubuntu
RUN cd ${HOME}/config ; zsh -f ./init-vim.sh


# ----
FROM base-ubuntu
RUN cd ${HOME}/config ; zsh -f ./init-zsh.sh

# ----

FROM archlinux AS arch

RUN pacman -Sy --noconfirm git zsh vim

ENV HOME /root
ADD . ${HOME}/config

RUN cd ${HOME}/config ; zsh -f ./init.sh