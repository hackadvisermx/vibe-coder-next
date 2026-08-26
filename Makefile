.PHONY: help build up down restart shell verify logs clean

help:
	@echo "Comandos disponibles para Vibe Coder:"
	@echo "  make build    - Construir la imagen Docker"
	@echo "  make up       - Iniciar el contenedor en segundo plano"
	@echo "  make down     - Detener el contenedor"
	@echo "  make restart  - Reiniciar el contenedor"
	@echo "  make shell    - Abrir terminal interactiva en el contenedor"
	@echo "  make verify   - Verificar versiones de todas las herramientas"
	@echo "  make logs     - Ver registros del contenedor"
	@echo "  make clean    - Eliminar contenedor y volúmenes de datos"

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
