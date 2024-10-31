# Makefile для генерации кода из proto файлов

# Директории
PROTO_DIR = proto
GEN_DIR = gen/go

# Команды
generate: ## Генерация кода из proto файлов
	protoc -I $(PROTO_DIR) $(PROTO_DIR)/sso/*.proto --go_out=$(GEN_DIR) --go_opt=paths=source_relative --go-grpc_out=$(GEN_DIR) --go-grpc_opt=paths=source_relative

.PHONY: default generate

default: generate