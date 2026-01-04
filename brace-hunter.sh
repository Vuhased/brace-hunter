#!/bin/bash

# Цвета для вывода (чтобы было красиво в терминале)
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if [ -z "$1" ]; then
    echo -e "${RED}Использование:${NC} brace-hunter <путь_к_файлу>"
    exit 1
fi

FILE=$1

if [ ! -f "$FILE" ]; then
    echo -e "${RED}Ошибка:${NC} Файл $FILE не найден."
    exit 1
fi

# Очистка кода: убираем комментарии // и /* */, а также текст в кавычках ""
# Это делает проверку почти на 100% точной
CLEAN_CODE=$(cat "$FILE" | \
    sed 's/\/\/.*//g' | \
    sed ':a;s/\/\*.*\*\///g;/ \/\*/ {N;ba}' | \
    sed 's/"[^"]*"//g')

OPEN=$(echo "$CLEAN_CODE" | grep -o '{' | wc -l)
CLOSE=$(echo "$CLEAN_CODE" | grep -o '}' | wc -l)

echo "Файл: $FILE"
echo "-------------------------------------"
echo "Открывающих { : $OPEN"
echo "Закрывающих } : $CLOSE"

if [ "$OPEN" -eq "$CLOSE" ]; then
    echo -e "${GREEN}✅ БАЛАНС В НОРМЕ${NC}"
else
    DIFF=$((OPEN - CLOSE))
    echo -e "${RED}❌ ОШИБКА БАЛАНСА!${NC}"
    if [ "$DIFF" -gt 0 ]; then
        echo "Нужно добавить закрывающих скобок ( } ): $DIFF"
    else
        echo "У тебя лишние закрывающие скобки ( } ): ${DIFF#-}"
    fi
    echo "-------------------------------------"
    echo "Совет: проверь места, где ты недавно ставил или удалял /* */"
fi
