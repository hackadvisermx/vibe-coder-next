.PHONY: help build up down restart shell verify logs clean install-cli

help:
	@echo "Comandos disponibles para Vibe Coder:"
	@echo "  make build       - Construir la imagen Docker"
	@echo "  make up          - Iniciar el contenedor en segundo plano"
	@echo "  make down        - Detener el contenedor"
	@echo "  make restart     - Reiniciar el contenedor"
	@echo "  make shell       - Abrir terminal interactiva en el contenedor"
	@echo "  make verify      - Verificar versiones de todas las herramientas"
	@echo "  make logs        - Ver registros del contenedor"
	@echo "  make clean       - Eliminar contenedor y volúmenes de datos"
	@echo "  make install-cli - Instalar el comando global 'vibe' en tu Mac/Linux (~/.local/bin/vibe)"

build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

shell:
	docker compose exec vibe-coder /usr/local/bin/vibe-shell

verify:
	docker compose exec vibe-coder ./verify.sh

logs:
	docker compose logs -f vibe-coder

clean:
	docker compose down -v

install-cli:
	@mkdir -p ~/.local/bin
	@cp bin/vibe ~/.local/bin/vibe
	@chmod +x ~/.local/bin/vibe
	@echo "✅ Comando 'vibe' instalado en ~/.local/bin/vibe"
	@echo "Ya puedes escribir 'vibe' en cualquier carpeta de tu terminal para iniciar el contenedor."
