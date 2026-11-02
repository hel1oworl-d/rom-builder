#!/bin/bash

# Укажите ВАШ ник на GitHub и ВАШУ почту
GITHUB_USER=hel1oworl-d
GITHUB_EMAIL=romkastupnikov98@gmail.com

KBUILD_BUILD_USER="InfinityBuilder"
KBUILD_BUILD_HOST="CloudServer"

# Укажите производителя и кодовое имя ВАШЕГО телефона
# (Например, для Poco X3 Pro: oem=xiaomi, device=vayu)
export oem=xiaomi
export device=serebity

ROM="InfinityX"
manifest_url="https://github.com/projectinfinity-X/manifest"
export rom_vendor_name="infinity" 
branch="17" # Укажите ветку (14 для Android 14, 15 для Android 15 в зависимости от репозитория InfinityX)

# Создайте у себя на GitHub пустой репозиторий (например, с именем infinity_builds)
release_repo="hel1oworl-d/infinity_builds"

timezone="Europe/Moscow"
