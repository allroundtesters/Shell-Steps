#!/usr/bin/env bash

DEFAULT_FOLDERS="build config src static"
for folder in $DEFAULT_FOLDERS
do
    echo "creating "${folder}
    mkdir -p ${folder}
done

CUR_DIR=`pwd`

function create_src{
    echo "start create sub folders for src"
    cd ${CUR_DIR}
    touch App.vue
    touch main.js
    SRC_FOLDERS="api assets components directive filters icons lang mock router store styles utils \
            vendor views"

    for item in ${SRC_FOLDERS}
    do
        echo "create sub folders"
        mkdir -p ${CUR_DIR}/${item}
    done
    echo "end of create src template"
}

