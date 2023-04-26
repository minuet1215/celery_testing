dev:
	python manage.py runserver

celery:
	celery -A config worker -l info