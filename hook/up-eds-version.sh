#!/bin/bash

regex="sparkle:version=\"([0-9]+)\""

if [[ `cat "$PWD/eds.xml"` =~ $regex ]]
then
    original=${BASH_REMATCH[1]}
    new=$original
    ((new++))

    sed -i s/sparkle:version=\"$original\"/sparkle:version=\"$new\"/ "$PWD/eds.xml"
    echo "Upped the version of eds.xml to $new"
fi

