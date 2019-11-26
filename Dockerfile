FROM node:12

LABEL maintainer="Luiz Jr <luizjrdeveloper@gmail.com>"

# ------------------------------------------
# install the adonis CLI
# ------------------------------------------
RUN npm i -g @adonisjs/cli

# ------------------------------------------
# change the work directory
# ------------------------------------------
WORKDIR /var/www

# ------------------------------------------
# copy our initilization file and set permissions
# ------------------------------------------
COPY init.sh /init.sh
RUN chmod 755 /init.sh

CMD ["/init.sh"]
