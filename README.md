[![](https://badge.imagelayers.io/bbania/rainbowstream:latest.svg)](https://imagelayers.io/?images=bbania/rainbowstream:latest 'Get your own badge on imagelayers.io')

Rainbowstream in a container
============================

Awesome text based twitter client.

## Run on Linux:

```
$ docker run -it \
    -v /etc/localtime:/etc/localtime \
    -v $HOME/.rainbow_oauth:/root/.rainbow_oauth \
    -v $HOME/.rainbow_config.json:/root/.rainbow_config.json \
    --name my-rainbowstream \
    bbania/rainbowstream
```

## Run on OSX:

```
$ docker run -it \
    -v $HOME/.rainbow_oauth:/root/.rainbow_oauth \
    -v $HOME/.rainbow_config.json:/root/.rainbow_config.json \
    --name my-rainbowstream \
    bbania/rainbowstream
```

Then, to reattach to existing container, issue:

```
docker start `docker ps -q -l -f NAME=my-rainbowstream` && docker attach `docker ps -q -l -f NAME=my-rainbowstream`
```

