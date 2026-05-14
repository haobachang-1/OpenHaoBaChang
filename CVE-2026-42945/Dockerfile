FROM nginx:1.28.0

RUN apt-get update && apt-get install -y \
    netcat-openbsd \
    procps \
    curl \
    python3 \
    && rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 80

CMD ["/start.sh"]