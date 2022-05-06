from django.contrib import admin
from . models import *
admin.site.register(Movie)
admin.site.register(Actor)
admin.site.register(Actormovie)
admin.site.register(Director)
admin.site.register(Directormovie)
admin.site.register(Person)
admin.site.register(Personroles)
admin.site.register(Roles)


# Register your models here.
