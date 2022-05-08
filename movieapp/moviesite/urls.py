
from django import views
from django.urls import path, include
from . import views

app_name = 'moviesite'
urlpatterns = [
    path('', views.home),
    path('movie_info/<int:int>', views.movie_info, name='movie_info')
]