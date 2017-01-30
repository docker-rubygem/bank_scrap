FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.9

RUN gem install bank_scrap --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bank_scrap"]
CMD ["--help"]
