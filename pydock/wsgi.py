import os

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'pydock.settings')
os.environ.setdefault('DJANGO_CONFIGURATION', 'Develop')

from configurations.wsgi import get_wsgi_application

application = get_wsgi_application()