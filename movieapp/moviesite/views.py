from django.shortcuts import render
from .models import *

# Create your views here.

def home(request):
    data = Actor.objects.all()
    context = {'actors': data}
    return render(request, 'moviesite/home.html', context)
