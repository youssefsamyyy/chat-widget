# small nginx image for static sites
FROM nginx:alpine

# remove default conf and use ours
COPY nginx.conf /etc/nginx/nginx.conf

# copy site into nginx html root
COPY index.html /usr/share/nginx/html/index.html

# expose 8080 (Cloud Run expects your container to listen on PORT 8080)
EXPOSE 8080

# nginx:alpine runs in foreground by default, so no CMD needed
