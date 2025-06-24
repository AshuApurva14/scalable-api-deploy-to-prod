FROM nginx:alpine

ENV NGINX_ENV=development

# Create a non-root user and group, update packages, and remove default config
RUN apk update && apk upgrade --no-cache && \
    addgroup -S nginxgroup && \
    adduser -S nginxuser -G nginxgroup && \
    rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

# Change ownership of nginx config and set permissions
RUN chown -R nginxuser:nginxgroup /etc/nginx /var/cache/nginx /var/run

USER nginxuser

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD wget --spider -q http://localhost/ || exit 1
