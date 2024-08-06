FROM caddy:2-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/duckdns

FROM caddy:2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY ./storage/caddy/config/Caddyfile /etc/caddy/Caddyfile