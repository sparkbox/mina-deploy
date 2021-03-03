# Deploy your site via Mina and MinaCircle

# Setup

```sh
$ docker run -it --rm -v ${PWD}:/deploy sparkbox/mina-deploy init
```

You need to put your mina circle token in the .env file for your project. If you are already using mina-circle it should be in `~/.mina-circle.yml`, or you can generate a new one on [CircleCI][circle-api].

Refer to the [`mina-circle`][mina-circle-config] docs for further configuration. After this, you can run the `setup` command.

```sh
$ docker run -it --rm -v ${PWD}:/deploy sparkbox/mina-deploy setup
```

# Deploy

## Default
```sh
$ docker run -it --rm --env-file=.env -v ~/.ssh:/root/.ssh:ro -v ${PWD}:/deploy:ro sparkbox/mina-deploy deploy
```

## Branch
```sh
$ docker run -it --rm --env-file=.env -v ~/.ssh:/root/.ssh:ro -v ${PWD}:/deploy:ro sparkbox/mina-deploy deploy branch="branch-name"
```

## Environment
```sh
$ docker run -it --rm --env-file=.env -v ~/.ssh:/root/.ssh:ro -v ${PWD}:/deploy:ro sparkbox/mina-deploy deploy on="env-name"
```

[circle-api]: https://circleci.com/account/api
[mina-circle-config]: https://github.com/sparkbox/mina-circle#mina-configuration
