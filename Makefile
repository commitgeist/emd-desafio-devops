APP = emd-desafiodevops-app

build:
	docker build -t emd-desafiodevops-app:v1 .

test:
	@flake8 . --exclude .venv
	@pytest -v --disable-warnings
compose:
	@docker compose up -d
	@docker compose down

