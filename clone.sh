#!/bin/bash

# Собираем ссылки из текстовых блоков прямо на сервере, чтобы ничего не резалось
GH="https://github.com"

# 1. Официальное ядро Xiaomi для Redmi A7 Pro
git clone ${GH}/MiCode/Xiaomi_Kernel_OpenSource.git -b arctic-w-oss kernel/xiaomi/arctic

# 2. Патчи для процессоров Unisoc
git clone ${GH}/phhusson/treble_experimentations.git vendor/hardware_overlay

# 3. Скрипты для упаковки GSI
git clone ${GH}/ponces/treble_build_aosp.git patches
