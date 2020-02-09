"""
ASGI config for pydock project.

It exposes the ASGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/3.0/howto/deployment/asgi/
"""

import os

from django.core.asgi import get_asgi_application

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "pydock.settings")
os.environ.setdefault("DJANGO_CONFIGURATION", "Develop")

application = get_asgi_application()
