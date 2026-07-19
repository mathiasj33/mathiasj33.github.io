# syntax=docker/dockerfile:1

FROM jekyll/jekyll
WORKDIR /site
COPY Gemfile ./
RUN bundle install
RUN rm -f Gemfile.lock
COPY . .
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "-l"]
EXPOSE 4000
EXPOSE 35729