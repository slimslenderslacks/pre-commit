## building

```
python -m venv .venv
source .venv/bin/activate
```

```sh
docker build -t vonwig/pre-commit .
```

```sh
docker run -it --rm \
           -v $PWD:/project \
           -v /var/run/docker.sock:/var/run/docker.sock \
           --mount "type=volume,source=chatsdlc,target=/config" \
           --mount "type=volume,source=chatsdlc-cache,target=/.cache" \
           vonwig/pre-commit
```



