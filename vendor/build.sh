#!/bin/bash
COMPRESSOR=yuicompressor/yuicompressor-2.4.2.jar
STYLESHEETS=../stylesheets/
WIDGETS=../widgets/
NAMESPACE=tuktuk.
NAMESPACE_WIDGET=tuktuk.widget.

PACKAGE=../package/
PACKAGE_WIDGETS=../package/widgets/


MINIFIED="min"

#script
clear
echo -e "\033[0m"============================ LUNGO COMPILER ============================

    FILES_TO_COMPRESS=""
    DIR=$STYLESHEETS"css/"

    echo -e "\033[33m  [DIR]: "$DIR" >> COMPRESSING"
    FILES=(layout.css grid.css flexbox.css font.css form.css table.css button.css nav.css list.css widget.css media.css)
    for file in "${FILES[@]}"
    do
        FILES_TO_COMPRESS=$FILES_TO_COMPRESS" "$DIR$NAMESPACE$file
    done
    cat $FILES_TO_COMPRESS > $PACKAGE/$NAMESPACE"css"
    java -jar $COMPRESSOR $PACKAGE/$NAMESPACE"css" -o $PACKAGE/$NAMESPACE"min.css"

    echo -e "\033[32m    [BUILD]: tuktuk.css\033[0m"

    DIR=$STYLESHEETS
    FILES=(tuktuk.theme.styl __vendor.styl)
    for file in "${FILES[@]}"
    do
        echo -e "\033[32m    [COPY]: "$file"\033[0m"
        cp $DIR$file $PACKAGE$file
    done
    cp $DIR"css/tuktuk.theme.css" $PACKAGE

    # WIDGETS
    # Icon
    cp $WIDGETS"icon/css/"$NAMESPACE_WIDGET"icon.css" $PACKAGE_WIDGETS

    # Modal
    cp $WIDGETS"modal/css/"$NAMESPACE_WIDGET"modal.css" $PACKAGE_WIDGETS
    cp $WIDGETS"modal/build/"$NAMESPACE_WIDGET"modal.js" $PACKAGE_WIDGETS







echo ============================ /LUNGO COMPILER ============================
