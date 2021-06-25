## Запуск

```
    docker-compose up
```

или 

```
    make
    apiserver
```

------

## Функционал

Данное приложение умеет обрабатывать следующие HTTP-запросы:
- Создавать пользователя по отправленным email и password (POST /users):
    ```
        http POST http://localhost:8080/users email=[`valid email`] password=[`valid password (6 < len < 100)`]
    ```
- Создавать сессии для пользователя (POST /sessions):
    ```
        http -v --session=user POST http://localhost:8080/sessions email=[`valid email`] password=[`valid password (6 < len < 100)`]
    ```
- Получать информацию о текущем пользователе (GET /private/whoami):
    ```
        http -v --session=user http://localhost:8080/private/whoami
    ```
Также для каждого запроса генерируется uuid и происходит логирование запросов и их статусов

Для хранения информации о пользователях используется БД PostgreSQL 