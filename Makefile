build:
	docker-compose exec app python manage.py migrate
	docker-compose exec app python manage.py createsuperuser

load_data:
	docker-compose exec app python manage.py loaddata planets.json
	docker-compose exec app python manage.py loaddata people.json
	docker-compose exec app python manage.py loaddata species.json
	docker-compose exec app python manage.py loaddata transport.json
	docker-compose exec app python manage.py loaddata starships.json
	docker-compose exec app python manage.py loaddata vehicles.json
	docker-compose exec app python manage.py loaddata films.json

drop_db:
	docker-compose exec app python manage.py flush