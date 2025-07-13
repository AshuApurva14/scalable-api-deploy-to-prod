FROM nginx:1.28.0-alpine3.21-slim

ENV NGINX_ENV=development

# Create a non-root user and group, update packages, and remove default config
RUN rm /etc/nginx/conf.d/default.conf

COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8081

HEALTHCHECK --interval=30s --timeout=10s --start-period=10s --retries=3 \
  CMD wget --spider -q http://localhost:8081/api/v1/ || exit 1

CMD [ "nginx", "-g", "daemon off;" ]
 