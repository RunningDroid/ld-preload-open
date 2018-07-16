CFLAGS += -std=c99 -O2 -Wall -fstack-protector-strong -D_FORTIFY_SOURCE=2

log_file_accesses.so:
	# Note: I'm assuming this is being compiled on x86_64
	# build 64-bit lib
	gcc $(CFLAGS) -shared -fPIC path-mapping.c -o path-mapping_lib.so -ldl
	# build 32-bit lib
	gcc $(CFLAGS) -m32 -shared -fPIC path-mapping.c -o path-mapping_lib32.so -ldl

clean:
	rm *.so
