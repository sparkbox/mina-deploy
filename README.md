# Deploy your site via Mina and MinaCircle


You need to put your mina circle token in the .env file for your project. If you are already using mina-circle it should be in `~/.mina-circle.yml`, or you can generate a new one on [CircleCI](https://circleci.com/account/api).


# To deploy
```
docker run -it --env-file=.env -v ~/.ssh:/root/.ssh:ro -v ${PWD}:/deploy:ro mina-deploy
```

# To deploy a specific branch
```
docker run -it --env-file=.env -v ~/.ssh:/root/.ssh:ro -v ${PWD}:/deploy:ro mina-deploy branch="branch-name"
```

# To deploy on a specific environment
```
docker run -it --env-file=.env -v ~/.ssh:/root/.ssh:ro -v ${PWD}:/deploy:ro mina-deploy on="env-name"
```
