# UNIT8_SYSTEMD

### 1.Написать service, который будет раз в 30 секунд мониторить лог на предмет наличия ключевого слова.

***- Создадим [Vagrantfile](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/Vagrantfile) со [скриптом](), который будет копировать файлы [лога(c ключевым словом)](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/watchdog.log), [скрипта для сервиса](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/watchdog.sh), [файл параметров](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/watchdog), [сервис юнит](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/watchlog.service) и [таймер юнит](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/watchlog.timer) в виртуалку и запускать таймер юнит.***

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

***- Все необходимые действия прописываем в [скрипт](), при старте машины все необходимые пакеты установлены, (файл с настройками spawn-fcgi)[] и [unit файл]() скопированы в нужные папки***

***-Проверим, что все работает***

```console

```







