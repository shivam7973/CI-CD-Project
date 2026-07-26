FROM ubuntu
WORKDIR /app
COPY . .
RUN apt update && apt install nginx -y
RUN cp -r * /var/www/html
CMD ["nginx","-g","daemon off;"]
EXPOSE 80
