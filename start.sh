#!/bin/bash

_set_bot () {
    local zippath
    zippath="virus.zip"
    echo "جاري تنزيل اكواد سورس فايروس "
    wget -q https://github.com/virusiq1/VirusMusic/archive/main.zip -O "$zippath"
    echo " تفريغ البيانات "
    unzip -qq "$zippath"
    echo " تم التفريغ "
    echo " يتم التنظيف "
    rm -rf "$zippath"
    sleep(5)
    python3 setup/updater.py requirements.txt requirements.txt
    sleep(5)
    cd "VirusMusic-main"

    
    echo "    بدء تنزيل بيانات فايروس    "
    echo "

    "
    python3 main.py
}

_set_bot
