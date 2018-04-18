FROM ubuntu:16.04
LABEL maintainer="Curtis Oakley"

# Install needed basic libraries
RUN apt-get update -q && \
    apt-get install -q -y \
        build-essential \
        curl

# Install NodeJS 6
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && \
    apt-get install -q -y \
        nodejs

# Install Picos
WORKDIR /picos
RUN npm install -g \
        pico-engine \
        krl-compiler

EXPOSE 8080

CMD pico-engine

