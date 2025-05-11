# .EXPORT_ALL_VARIABLES:

.DEFAULT_GOAL := build

.PHONY: build-rust
build-rust:
	@pack builder create kea-run/builder:rust \
		--pull-policy always \
		--config rust/builder.toml

.PHONY: build
build: build-rust
