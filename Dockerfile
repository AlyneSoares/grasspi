FROM nginx:1.13-alpine
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY nginx/ssl/nginx.crt /etc/nginx/ssl/nginx.crt
COPY nginx/ssl/nginx.key /etc/nginx/ssl/nginx.key
ENV APP_HOME /dist
WORKDIR $APP_HOME
COPY dist/ $APP_HOME/
