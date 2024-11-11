#!/bin/bash

echo "Введите путь к вашей папке Obsidian Vault (например, /home/user/.config/obsidian/MyVault):"
read OBSIDIAN_VAULT_DIR

if [ -z "$OBSIDIAN_VAULT_DIR" ]; then
  echo "Ошибка: Путь не был введен. Скрипт завершает работу."
  exit 1
fi

if [ ! -d "$OBSIDIAN_VAULT_DIR" ]; then
  echo "Ошибка: Папка '$OBSIDIAN_VAULT_DIR' не существует. Проверьте путь и попробуйте снова."
  exit 1
fi

echo "Вы выбрали папку Obsidian: $OBSIDIAN_VAULT_DIR"

OBSIDIAN_SNIPPETS_DIR="$OBSIDIAN_VAULT_DIR/snippets"
mkdir -p "$OBSIDIAN_SNIPPETS_DIR"

echo "Хотите ли вы добавить или изменить файл export.py в /usr/lib/python3.12/site-packages/pywal? (y/n)"
read answer

if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
  if [ "$(id -u)" -ne 0 ]; then
    echo "Для внесения изменений в /usr/lib/python3.12/site-packages/pywal необходимо запустить скрипт с правами суперпользователя (sudo)."
    exit 1
  fi

  if [ ! -d "/usr/lib/python3.12/site-packages/pywal" ]; then
    echo "Директория /usr/lib/python3.12/site-packages/pywal не существует. Проверьте путь и попробуйте снова."
    exit 1
  fi

  cp export.py /usr/lib/python3.12/site-packages/pywal/export.py

  echo "Файл export.py успешно добавлен или заменен в /usr/lib/python3.12/site-packages/pywal."
fi

echo "Скрипты pywal-obsidian установлены."
echo "Не забудьте включить сниппет obsidian.css в Obsidian: Settings > Appearance > CSS Snippets > obsidian.css"
