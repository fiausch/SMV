#!/bin/bash
export __GL_THREADED_OPTIMIZATIONS=0
./shaderCompile.sh
mkdir -p ./build/
cd ./build/
cmake -G Ninja ..
ninja 
rm ../compile_commands.json
cp compile_commands.json ..
echo "executing the program: "
./main