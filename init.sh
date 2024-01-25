#!/bin/bash

LOC=$(dirname $(readlink -f ${BASH_SOURCE[0]}))
DTCW=${LOC}/dtcw

if [ ! -x ${DTCW} ]
then
    echo "Downloading dtcw"
    curl -Lo ${DTCW} https://doctoolchain.org/dtcw
    chmod ${DTCW}
fi

echo "Pulling images and setting up"
${DTCW} -v

if [ ! -f ${LOC}/docToolchainConfig.groovy ]
then
    echo "Create the local config file. Answer 'y' to the next prompt."
    ${DTCW} tasks --group=doctoolchain
fi
