emcc -std=c++11 -s WASM=1 -s MODULARIZE=1  -s EXPORT_NAME="'Module_Ezsift'" ./ezsift.cpp ./ezsift_api.cpp -o ezsift.html
