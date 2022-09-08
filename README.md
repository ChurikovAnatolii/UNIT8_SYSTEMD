# UNIT8_SYSTEMD

### 1.Написать service, который будет раз в 30 секунд мониторить лог на предмет наличия ключевого слова  
(файл лога и ключевое слово должны задаваться в /etc/sysconfig).

***- Создадим [Vagrantfile](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/Vagrantfile) со [скриптом](), который будет копировать файлы [лога(c ключевым словом)](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/watchdog.log), [скрипта для сервиса](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/watchdog.sh), [файл параметров](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/watchdog), [сервис юнит](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/watchlog.service) и [таймер юнит](https://github.com/ChurikovAnatolii/UNIT8_SYSTEMD/blob/main/watchlog.timer) в виртуалку и запускать таймер юнит.***

***- Запустим виртуальную маштну и проверим лог messages.***
