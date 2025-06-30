# Выполнить в оболочке под пользователем foxford_dev

# Полный бэкап БД foxford_project
pg_dump -U foxford_dev -d foxford_project -F p -f foxford_project_full.sql

# Бэкап только схемы данных
pg_dump -U foxford_dev -d foxford_project -F p --schema-only -f foxford_project_schema.sql