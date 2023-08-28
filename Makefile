TARGET = target

.PHONY: c-call-rust
c-call-rust:
	cargo build -p c-call-rust
	gcc -o $(TARGET)/c-call-rust c-call-rust/main.c -lc_call_rust -Ltarget/debug
	$(TARGET)/c-call-rust

.PHONY: rust-call-c
rust-call-c:
	gcc --shared rust-call-c/awesome.c -o rust-call-c/libawesome.dylib
	cargo run -p rust-call-c

.PHONY: rust-call-c-by-cc
rust-call-c-by-cc:
	cargo run -p rust-call-c-by-cc
