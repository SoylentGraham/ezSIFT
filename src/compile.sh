#	wasm error
#		RuntimeError: float unrepresentable in integer range
#	add clamp to avoid
#		-s "BINARYEN_TRAP_MODE='clamp'"
#	from https://groups.google.com/forum/#!topic/emscripten-discuss/IJr4ApiW_zU


emcc -std=c++11 -s WASM=1 -s MODULARIZE=1 -s "BINARYEN_TRAP_MODE='clamp'" -s EXPORT_NAME="'Module_Ezsift'" -s EXTRA_EXPORTED_RUNTIME_METHODS='["cwrap"]' ./ezsift.cpp ./ezsift_api.cpp -o ezsift.html
