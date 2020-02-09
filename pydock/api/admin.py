from django.contrib import admin
from .models import (
    People,
    Planet,
    Film,
    Starship,
    Vehicle,
    Species
)

models = [People, Planet, Film, Starship, Vehicle, Species]

for model in models:
    admin.site.register(model)
