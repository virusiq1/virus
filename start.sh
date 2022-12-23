#!/bin/bash

_set_bot () {
    echo "جاري تنزيل اكواد سورس فايروس1 2"
    wget -q https://github.com/virusiq1/VirusMusic/archive/main.zip -O "virus.zip"
    echo " تفريغ البيانات "
    unzip "virus.zip"
    echo " تم التفريغ "
    echo " يتم التنظيف "
    sleep 5
    python3 setup/updater.py requirements.txt requirements.txt
    sleep 5
    cd "VirusMusic-main"

    
    echo "    بدء تنزيل بيانات فايروس    "
    echo "

    "
    python3 main.py
}

_set_bot
