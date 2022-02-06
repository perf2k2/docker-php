## DockerPHP

Небольшие php докер образы разных версий для временного использования (установка зависимостей, запуск тестов, и т.д.)

### Сборка или получение

```shell
docker build . -f Dockerfile-5.6 -t docker-php:5.6
docker build . -f Dockerfile-8.1 -t docker-php:8.1
```
```shell
docker pull perf2k2/docker-php:5.6
docker pull perf2k2/docker-php:8.1
```

### Использование

```shell
docker run -it -v [PATH]:/app docker-php:5.6 sh -c "[COMMAND]"
docker run -it -v [PATH]:/app docker-php:8.1 sh -c "[COMMAND]"
```
Например, установка зависимостей: ``

---
Tip: отправка в репозиторий  
`docker tag docker-php:x.x perf2k2/docker-php:x.x`    
`docker push perf2k2/docker-php:x.x`