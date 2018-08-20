FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf

COPY ****.**.crt /etc/nginx/
COPY ****.**.pem /etc/nginx/
