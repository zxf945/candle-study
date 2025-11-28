# 默认目标
.PHONY: all
all: build

# 编译项目
.PHONY: build
build:
	cargo build

# 运行项目
.PHONY: run
run:
	cargo run

# 运行测试
.PHONY: test
test:
	cargo test -- --test-threads=1

# 更新依赖
.PHONY: deps-update
deps-update:
	cargo update

# 清理依赖缓存（target 目录以外的 cargo 缓存）
.PHONY: deps-clean
deps-clean:
	cargo clean --release && rm -rf ~/.cargo/registry/cache/* ~/.cargo/git/db/*

# 格式化代码（需安装 rustfmt: rustup component add rustfmt）
.PHONY: fmt
fmt:
	cargo fmt

# 代码检查（需安装 clippy: rustup component add clippy）
.PHONY: lint
lint:
	cargo clippy --all-targets --all-features -- -D warnings

# 清理编译产物
.PHONY: clean
clean:
	cargo clean

# 显示帮助信息
.PHONY: help
help:
	@echo "🛠️  Rust 项目构建命令"
	@echo
	@echo "构建与运行:"
	@echo "  build        - 编译项目"
	@echo "  run          - 运行项目"
	@echo "  test         - 运行所有测试"
	@echo
	@echo "依赖管理:"
	@echo "  deps-update  - 更新依赖"
	@echo "  deps-clean   - 清理依赖缓存"
	@echo
	@echo "代码质量:"
	@echo "  fmt          - 格式化代码"
	@echo "  lint         - 代码检查"
	@echo
	@echo "清理:"
	@echo "  clean        - 清理编译产物"
	@echo
	@echo "帮助:"
	@echo "  help         - 显示此帮助信息"
