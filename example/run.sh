#!/bin/bash

JWT_CPP_SRC_PATH=../include/

INCLUDES="-I /usr/local/include"
INCLUDES+=" -I /usr/include"
INCLUDES+=" -I $JWT_CPP_SRC_PATH"

CXXFLAGS=" -fPIC -Wall -Wpedantic -Wextra -fno-strict-aliasing -fmessage-length=0"

COMPILER_ARGS="$CXXFLAGS rsa-create.cpp $INCLUDES -lssl -lcrypto -lpthread -ldl -o out"

rm out | true && g++ $COMPILER_ARGS && ./out
