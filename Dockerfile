FROM nginx:stable

MAINTAINER Andrey Sizov, andrey.sizov@jetbrains.com

ENV DOLLAR='$' \
    RESOLVER='8.8.8.8' \
    BACKEND_HOST='www.jetbrains.com' \
    BACKEND_PORT='443' \
    LISTEN_PORT='443'

COPY nginx.conf.template /etc/nginx/

EXPOSE ${LISTEN_PORT}

CMD /bin/bash -c "envsubst < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"

ENTRYPOINT ["/bin/bash", "-c", "envsubst < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"]