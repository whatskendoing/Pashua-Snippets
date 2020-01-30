#!/bin/bash

# to download Pashua:
# https://www.bluem.net/en/projects/pashua/

# Pashua App path
PASH="/Applications/Pashua.app/Contents/MacOS/Pashua"

# Conf file path
CONF="/tmp/conf.pash"

if [ -f $CONF ]; then
    rm $CONF
fi

cat <<EOT >> $CONF
    *.title = Drop Down Box example
    *.floating = 1
    *.x = 450
    *.y = 300
    img.type = image
    img.path = /System/Library/CoreServices/HelpViewer.app/Contents/Resources/AppIcon.icns
    img.maxwidth = 100
    img.border = 0
    img.x = 0
    img.y = 20

    cb.type = combobox
    cb.mandatory = Yes
    cb.label = Select from Dropdown option below
    cb.default = Click dropdown to select options
    cb.option = option_0
    cb.option = option_1
    cb.option = option_2
    cb.width = 225
    cb.tooltip = Pick an option
    cb.x = 125
    cb.y = 75

EOT

result_option=$($PASH $CONF)
echo $result_option
