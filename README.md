## DockerPHP

### Сборка или получение

```shell
sudo docker build . -t docker-php:5.6
```
```shell
sudo docker pull perf2k2/docker-php:5.6
```

### Использование

```shell
sudo docker run -v [PATH]:/app docker-php:5.6 sh -c "[COMMAND]"
```