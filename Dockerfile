# syntax=docker/dockerfile:1

FROM jekyll/jekyll
WORKDIR /site
COPY . .
RUN apk update && apk add ruby-dev ruby-bundler nodejs && bundle install
CMD ["jekyll", "serve", "--host", "0.0.0.0"]
EXPOSE 4000
EXPOSE 35729