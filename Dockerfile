FROM quay.io/plebs_inc/nvim_base:dev

ENV U="pleb"

RUN useradd -ms /bin/bash $U

ENV APP_HOME=/home/$U
WORKDIR $APP_HOME
RUN chown $U $APP_HOME

# Configure neovim
WORKDIR $APP_HOME
USER $U

COPY nvim config
COPY bashrc .bashrc
RUN mkdir $APP_HOME/.config
RUN cp -r config $APP_HOME/.config/nvim

USER 0
RUN rm -r config

USER $U
