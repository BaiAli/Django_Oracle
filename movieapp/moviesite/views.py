from django.shortcuts import render
from .models import Movie
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
import cx_Oracle
from django.db.models import Q
connection = cx_Oracle.connect('ar','django','localhost:1521/XEPDB1')


# Create your views here.

def home(request):
    movies = Movie.objects.all()
    context = {'movies': movies}
    return render(request, 'moviesite/home.html', context)

def movie_info(reqeust, id):
    movie = Movie.objects.get(pk=id)
    context = {'movie': movie}
    return render(request, 'movieste/movie_info.html', context)

def sort(request):
    sorting_filter = request.POST['sorting-name']
    order_type = request.POST['order_type']
    cursor = connection.cursor()
    cursor.execute("Select * from movie order by {} {}".format(sorting_filter, order_type))
    rows = cursor.fetchall()
    paginator = Paginator(rows, 10)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    return render(request, 'cars.html', {'data': page_obj})


def search(request):
    searching_object = request.POST['input-search']
    searching_filter = request.POST['searching-name']
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM movie WHERE {} = '{}'".format(searching_filter, searching_object))
    rows = cursor.fetchall()
    paginator = Paginator(rows, 10)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    return render(request, 'books.html', {'data': page_obj})

def detail(request, book_id):
    cursor = connection.cursor()
    cursor.execute("Select * from books where id = " + str(book_id))
    rows = cursor.fetchone()
    return render(request, 'detail.html', {'data': rows})



