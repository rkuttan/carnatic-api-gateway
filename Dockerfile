# Use nginx:1.15
FROM nginx:1.15

COPY ./nginx.conf /etc/nginx/nginx.conf
#WORKDIR /nginx/tls
#COPY ~/tls/nginx.crt .
#COPY ~/tls/nginx.key .

# Define working directory.
WORKDIR /etc/nginx

# Expose API port to the outside
EXPOSE 443

# Launch application
CMD ["nginx", "-g", "daemon off;"]
