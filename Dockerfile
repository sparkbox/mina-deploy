FROM ruby:2.5

# Get a copy of sb so we can authenticate on the server
RUN wget -O sb.zip https://github.com/sparkbox/sb/releases/download/v0.8.0/amd64-linux-sb.zip
RUN unzip -j sb.zip && mv amd64-linux-sb /usr/local/bin/sb
RUN chmod +x /usr/local/bin/sb

WORKDIR deploy

RUN gem install mina -v '~> 0.3'
RUN gem install mina-circle -v '~> 2.0.1'
RUN gem install mina-rollbar -v '~> 0.1.6'
RUN gem install dotenv

RUN apt-get update && apt-get install -y openssh-client

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
