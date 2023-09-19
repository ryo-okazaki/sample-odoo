install:
	docker-compose up -d --build
	docker-compose exec -it odoo python3 /usr/bin/odoo -d odoo_db --db_host=db --db_port=5432 --db_user=odoo --db_password=password --stop-after-init -i base

build:
	docker-compose up -d --build

down:
	docker-compose down

reboot:
	docker-compose down
	docker-compose up -d --build

login:
	docker-compose exec -it odoo bash