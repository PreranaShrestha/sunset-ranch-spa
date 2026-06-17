FROM nginx:alpine

COPY . /usr/share/nginx/html

# Change nginx to listen on 8080 (Cloud Run requirement)
RUN sed -i 's/listen       80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
