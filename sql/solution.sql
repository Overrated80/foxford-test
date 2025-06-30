-- 1️ Создаём пользователя с паролем
CREATE ROLE foxford_dev WITH LOGIN PASSWORD 'SuperSecretPassword123';

-- 2️ Создаём базу данных
CREATE DATABASE foxford_project;

-- 3️ Назначаем владельцем базы пользователя foxford_dev
ALTER DATABASE foxford_project OWNER TO foxford_dev;

-- 4️ Подключаемся к базе foxford_project (комментарием)
-- \c foxford_project

-- 5️ Создаём таблицу tasks
CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Добавляем запись
INSERT INTO tasks (title) VALUES ('Настроить сервер');