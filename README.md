Конфигурация Nginx кастомная, собирается через docker-compose с пробросом порта `8080` на `80` контейнера.

---

#Структура:

foxford-test/
├── web/
│   ├── docker-compose.yml          # Компоуз файл для запуска Nginx контейнера
│   ├── nginx.conf                  # Кастомный конфиг Nginx
│   └── index.html                  # Статическая страница "Hello, Foxford!"
├── ansible/
│   ├── install_tools.yml           # Playbook для установки mc и htop
│   ├── setup_ssh_and_install.yml   # Playbook для добавления SSH ключа и установки mc, htop
│   └── inventory                   # Инвентори файл для Ansible
├── sql/
│   ├── solution.sql                # SQL-скрипт для создания пользователя, базы и таблицы с записью
│   └── backup_commands.sh          # Скрипт для создания полного и schema-only бэкапа через pg_dump
├── log_arch/
│   └── archiver.sh                 # Скрипт архивирования .log файлов старше 7 дней