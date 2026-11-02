#!/bin/bash
echo "***BuildBot для GitHub Actions***"

# Записываем пустышки в файлы логов, чтобы скрипты build.sh не падали из-за отсутствия файлов
echo "no_token" > /tmp/tg_token
echo "no_chat" > /tmp/tg_chat
echo "no_token" > /tmp/gh_token
echo "1" > /tmp/build_no

# Копируем утилиты отправки в системную папку (чтобы скрипты сборщика их видели)
sudo cp github-release /usr/bin/
sudo cp telegram /usr/bin/

# Ставим необходимые для сборки Android пакеты и компиляторы
sudo apt-get update
sudo apt-get install -y bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev python3 openjdk-17-jdk

echo "Настройка окружения завершена, запускаем сборку..."
