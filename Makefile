all: image-socks5 local

image-socks5: 
	docker build -t proxymurder/socks5:latest ./

local:
	docker compose up -d socks5

rollback:
	docker compose down