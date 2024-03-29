# docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/your-app oleksandrp/serverspec
FROM ruby:2.6.2-alpine3.9
LABEL maintainer="oleksandrp@gmail.com"

RUN apk add --update --no-cache build-base

COPY Gemfile Gemfile.lock ./
RUN bundle install

ENTRYPOINT ["rspec"]
CMD ["-h"]
