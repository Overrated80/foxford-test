LOG_DIR="$1"
DATE=$(date +%F)
ARCHIVE_NAME="logs_$DATE.tar.gz"

# Находим файлы .log старше 7 дней
FILES=$(find "$LOG_DIR" -type f -name "*.log" -mtime +7)

if [ -z "$FILES" ]; then
    echo "Нет логов для архивации."
    exit 0
fi

# Создаём архив
tar -czf "$LOG_DIR/$ARCHIVE_NAME" $FILES && \
    echo "Архив создан: $ARCHIVE_NAME" && \
    echo "Архивированы файлы:" && \
    echo "$FILES" && \
    rm -f $FILES && \
    echo "Удалены заархивированные файлы."

exit 0