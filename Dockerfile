FROM ruby:2.5

WORKDIR deploy

RUN gem install mina -v '~> 0.3'
RUN gem install mina-circle -v '~> 2.0.1'
RUN gem install mina-rollbar -v '~> 0.1.6'
RUN gem install dotenv

ENTRYPOINT ["mina"]
CMD ["help"]
