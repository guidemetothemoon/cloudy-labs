#!/bin/bash

inputValueToValidate=$1
expectedValue=$2

if [ -z $inputValueToValidate ]; then
    echo "Input value is not set!"
    exit 1
fi
if [ $inputValueToValidate != $expectedValue ]; then
    echo "Input value is not as expected!"
    exit 1
fi
    echo "Input value is set and has the expected value."
    exit 0