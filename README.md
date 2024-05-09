# dockertorch
docker torch env

# Build 

```
$ docker build -t dockertorch .
```

# Usage

```
$ docker run --rm -d -p 8888:8888 -v ${PWD}:/data --name dtorch dockertorch
```

To stop and delete the container process:
```
$ docker stop dtorch
```


