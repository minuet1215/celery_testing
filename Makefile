dev:
	python manage.py runserver

celery:
	celery -A config worker -l info --pool=solo

flower:
	celery flower -A config --port=5555

beat:
	celery -A config beat -l INFO

beat_db:
	celery -A config beat -l INFO --scheduler django_celery_beat.scheduler:DatabaseScheduler