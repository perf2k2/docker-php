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

### Примеры 

Установка зависимостей:
```shell
docker run -it -v [PATH]:/app -v [USER_HOME_PATH]\.ssh:/root/.ssh docker-php:5.6 sh -c "chmod 700 ~/.ssh && chmod 600 ~/.ssh/id_rsa && chmod 644 ~/.ssh/id_rsa.pub && composer install --ignore-platform-reqs"
```
Запуск тестов:
```shell
docker run -it -v [PATH]:/app docker-php:7.4 sh -c "php vendor/bin/codecept run unit"
```

### Вспомогательные команды
Отправка в репозиторий:
```shell
docker tag docker-php:x.x perf2k2/docker-php:x.x    
docker push perf2k2/docker-php:x.x
```
