# docker-meteor

Meteor in Docker.

## Overview

- WORKDIR /app
- Default EXPOSE 3000
- ENTRYPOINT meteor

## Building

Ensure latest version of Meteor is always installed by exluding cache.
```bash
docker build --no-cache -t ahannigan/meteor:latest
```

## Running

Mount local directory to /app and run meteor:
```bash
docker run --rm -it -v $(pwd):/app -p 3000:3000 ahannigan/meteor:latest
```

or with compose:

```bash
docker-compose up
```

Minimingo doesn't seem to like mounting a local directory on Mac through virtualbox.
Can be resolved by using a MongoDB container (see docker-compose.yml for example)
