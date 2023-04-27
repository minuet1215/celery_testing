dev:
	python manage.py runserver

celery:
	celery -A config worker -l info --pool=solo

flower:
	celery flower -A config --port=5555