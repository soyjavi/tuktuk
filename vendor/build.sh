#!/bin/bash
COMPRESSOR=yuicompressor/yuicompressor-2.4.2.jar
SOURCES=../
NAMESPACE=tuktuk.
PACKAGE=../package/
MINIFIED="min"

#script
clear
echo -e "\033[0m"============================ LUNGO COMPILER ============================

    FILES_TO_COMPRESS=""
    DIR=$SOURCES"stylesheets/css/"

    echo -e "\033[33m  [DIR]: "$DIR" >> COMPRESSING"
    FILES=(layout.css grid.css flexbox.css font.css form.css table.css button.css nav.css list.css widget.css media.css)
    for file in "${FILES[@]}"
    do
        FILES_TO_COMPRESS=$FILES_TO_COMPRESS" "$DIR$NAMESPACE$file
    done
    cat $FILES_TO_COMPRESS > $PACKAGE/$NAMESPACE"css"
    java -jar $COMPRESSOR $PACKAGE/$NAMESPACE"css" -o $PACKAGE/$NAMESPACE"min.css"
    echo -e "\033[32m    [BUILD]: tuktuk.css\033[0m"

    DIR=$SOURCES"stylesheets/"
    FILES=(tuktuk.theme.styl __vendor.styl)
    for file in "${FILES[@]}"
    do
        echo -e "\033[32m    [COPY]: "$file"\033[0m"
        cp $DIR$file $PACKAGE$file
    done
    cp $DIR"css/tuktuk.theme.css" $PACKAGE

echo ============================ /LUNGO COMPILER ============================
