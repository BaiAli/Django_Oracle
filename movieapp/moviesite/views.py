from django.shortcuts import render
from .models import Movie

# Create your views here.

def home(request):
    movies = Movie.objects.all()
    context = {'movies': movies}
    return render(request, 'moviesite/home.html', context)

def movie_info(reqeust, id):
    movie = Movie.objects.get(pk=id)
    context = {'movie': movie}
    return render(request, 'movieste/movie_info.html', context)