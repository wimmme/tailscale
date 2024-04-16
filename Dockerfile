ARG TAILSCALE_VERSION=latest

FROM tailscale/tailscale:$TAILSCALE_VERSION

LABEL maintainer="wimmme@gmail.com"


ENV TS_TAILNET=
ENV TS_HOSTNAME=
ENV TS_EXTRA_FLAGS=
ENV TS_USERSPACE=true
ENV TS_STATE_DIR=/var/lib/tailscale/ 
ENV TS_AUTH_ONCE=true

RUN apk update && apk upgrade --no-cache  
RUN tailscale set --auto-update && tailscale update

