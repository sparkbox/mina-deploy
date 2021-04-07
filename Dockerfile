FROM ruby:2.5

WORKDIR deploy

RUN gem install mina -v '~> 1.2'
RUN gem install mina-circle -v '~> 3.0.0.beta.1'
RUN gem install mina-rollbar -v '~> 1.0.1'
RUN gem install dotenv

ENTRYPOINT ["mina"]
CMD ["--help"]
