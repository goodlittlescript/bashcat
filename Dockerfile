FROM alpine as base

# set working directory
RUN mkdir -p /app
WORKDIR /app
ENV PATH="/app/bin:$PATH"

RUN apk add --no-cache bash

#############################################################################
FROM base as shell

# Install development dependencies
# * curl bash gawk diffutils expect for ts
RUN apk add --no-cache curl bash gawk diffutils expect && \
    curl -o /usr/local/bin/ts -L https://raw.githubusercontent.com/thinkerbot/ts/v2.0.2/bin/ts && \
    chmod +x /usr/local/bin/ts

#############################################################################
FROM base as app
COPY ./bin /app/bin
