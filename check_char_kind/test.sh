#!/bin/sh

ID=$1
NAME=$2

# check ID consists with hankaku suji
CHECK=$(expr "${ID}" : "[0-9]*$")
if [ ${CHECK} -eq 0 ] || [ ${ID} -le 0 ]; then
    echo "inValid ID ${ID}"
else
    echo "valid ID ${ID}"
fi

# check name consists with Hankaku Eisuji, Kigo, space
CHECK=$(expr "${NAME}" : "[a-zA-Z0-9,. ;:-=@()\[-\`{-~]*$" )
if [ ${CHECK} -eq 0 ]; then
    echo "inValid NAME ${NAME}"
else
    echo "valid NAME ${NAME}"
fi
