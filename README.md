# UNIT8_SYSTEMD

### 1.Написать service, который будет раз в 30 секунд мониторить лог на предмет наличия ключевого слова.

***- Создадим [Vagrantfile](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/Vagrantfile) со [скриптом](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/Unit_script.sh), который будет копировать файлы [лога(c ключевым словом)](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/watchdog.log), [скрипта для сервиса](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/watchdog.sh), [файл параметров](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/watchdog), [сервис юнит](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/watchlog.service) и [таймер юнит](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/watchlog.timer) в виртуалку и запускать таймер юнит.***

***- Запустим виртуальную машину, проверим запущен ли таймер и проверим лог messages.***

```console

[root@server ~]# systemctl status watchlog.timer
● watchlog.timer - Run watchlog script every 30 second
   Loaded: loaded (/etc/systemd/system/watchlog.timer; disabled; vendor preset: disabled)
   Active: active (waiting) since Thu 2022-09-08 10:41:01 UTC; 2min 54s ago
  Trigger: Thu 2022-09-08 10:44:15 UTC; 19s left

Sep 08 10:41:01 server systemd[1]: Started Run watchlog script every 30 second.


[root@server ~]# cat /var/log/messages | grep ALERT
Sep  8 10:41:01 localhost root[4217]: : HERE it is ALERT
Sep  8 10:41:55 localhost root[4268]: : HERE it is ALERT

```
---

### 2. Из репозитория epel установить spawn-fcgi и переписать init-скрипт на unit-файл (имя service должно называться так же: spawn-fcgi).  

***- Все необходимые действия прописываем в [скрипт](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/Unit_script.sh). При старте машины все необходимые пакеты установлены, [файл с настройками spawn-fcgi](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/spawn-fcgi) и [unit файл](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/spawn-fcgi.service) скопированы в нужные папки***

***-Проверим, что все работает***

```console
● spawn-fcgi.service - Spawn-fcgi startup service by Otus
   Loaded: loaded (/etc/systemd/system/spawn-fcgi.service; disabled; vendor preset: disabled)
   Active: active (running) since Thu 2022-09-08 11:24:29 UTC; 37s ago
 Main PID: 4504 (php-cgi)
    Tasks: 33 (limit: 5953)
   Memory: 18.7M
   CGroup: /system.slice/spawn-fcgi.service
           ├─4504 /usr/bin/php-cgi
           ├─4505 /usr/bin/php-cgi
           ├─4506 /usr/bin/php-cgi
           ├─4507 /usr/bin/php-cgi
           ├─4508 /usr/bin/php-cgi
           ├─4509 /usr/bin/php-cgi
           ├─4510 /usr/bin/php-cgi
           ├─4511 /usr/bin/php-cgi
           ├─4512 /usr/bin/php-cgi
           ├─4513 /usr/bin/php-cgi
           ├─4514 /usr/bin/php-cgi
           ├─4515 /usr/bin/php-cgi
           ├─4516 /usr/bin/php-cgi
           ├─4517 /usr/bin/php-cgi
           ├─4518 /usr/bin/php-cgi
           ├─4519 /usr/bin/php-cgi
           ├─4520 /usr/bin/php-cgi
           ├─4521 /usr/bin/php-cgi
           ├─4522 /usr/bin/php-cgi
           ├─4523 /usr/bin/php-cgi
           ├─4524 /usr/bin/php-cgi
           ├─4525 /usr/bin/php-cgi
           ├─4526 /usr/bin/php-cgi
           ├─4527 /usr/bin/php-cgi
           ├─4528 /usr/bin/php-cgi
           ├─4529 /usr/bin/php-cgi
           ├─4530 /usr/bin/php-cgi
           ├─4531 /usr/bin/php-cgi
           ├─4532 /usr/bin/php-cgi
           ├─4533 /usr/bin/php-cgi
           ├─4534 /usr/bin/php-cgi
           ├─4535 /usr/bin/php-cgi
           └─4536 /usr/bin/php-cgi

Sep 08 11:24:29 server systemd[1]: Started Spawn-fcgi startup service by Otus.

```

---

### 3. Дополнить юнит-файл apache httpd возможностью запустить несколькоинстансов сервера с разными конфигами.

***- С помощью [скрипта](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/Unit_script.sh) скопируем [файл параметров 1](), [файл параметров 2]() и [юнит файл]() на виртуальную машину, пропишем запуск обоих инстансов, проверим работу.

```console

```



