#!/bin/bash

_set_bot () {
    local zippath
    zippath="virus.zip"
    echo "جاري تنزيل اكواد سورس فايروس "
    wget -q https://github.com/virusiq1/VirusMusic/archive/main.zip -O "$zippath"
    echo " تفريغ البيانات "
    CATPATH=$(zipinfo -1 "$zippath" | grep -v "/.");
    unzip -qq "$zippath"
    echo " تم التفريغ "
    echo " يتم التنظيف "
    rm -rf "$zippath"

    cd "VirusMusic-main"
    _run_cat_git
    python3 ../setup/updater.py ../requirements.txt requirements.txt
    chmod -R 755 bin
    echo "    بدء تنزيل بيانات فايروس    "
    echo "

    "
    python3 main.py
}

_set_bot
