
from . import views
from django.urls import path, include


urlpatterns = [
    path('', views.home, name='home_page')
]


from django import views
from django.urls import path, include
from . import views

app_name = 'moviesite'
urlpatterns = [
    path('', views.home),
    path('infoM/<int:pk>/', views.infoM, name='infoM'),
    path('search', views.search , name='search')
]

