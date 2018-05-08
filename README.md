# centos 7 Dockerfile

## Install history

* yum update
* timezone
* wget
* sudo
* net-tools
* java (1.8_172)

## build

```
sudo docker build -t inlineno1/centos7:0.1 .
```

## push

```
sudo docker login
sudo docker push inlineno1/centos7:0.1
```


## start

```
sudo docker run --privileged --name centos7 -d -t inlineno1/centos7:0.1

sudo docker exec -it centos7 /bin/bash
```
