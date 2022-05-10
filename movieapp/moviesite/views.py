from django.shortcuts import *
from .models import *
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
import cx_Oracle
from django.db.models import Q
connection = cx_Oracle.connect('qwerty','pass','localhost:1521/XEPDB1')


# Create your views here.

def home(request):
    movies = Movie.objects.all()
    context = {'movies': movies}
    return render(request, 'moviesite/home.html', context)

# def movie_info(reqeust, id):
#     movie = Movie.objects.get(pk=id)
#     context = {'movie': movie}
#     return render(request, 'movieste/movie_info.html', context)

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


def infoM(request, pk):
    other_movies = Movie.objects.all()[:7]
    movie = Movie.objects.get(m_id=pk)

    dm = Directormovie.objects.get(m_id=pk)
    director = Director.objects.get(d_id=dm.d_id)

    am = Actormovie.objects.filter(m_id=pk)

    actors_id = []
    actors_name = []
    for i in range(len(am)):
        actors_id.append(am[i].a_id)
    

    for i in range(len(actors_id)):
        str = Actor.objects.get(a_id=actors_id[i]).a_name + ' ' + Actor.objects.get(a_id=actors_id[i]).a_surname
        actors_name.append(str)

    context = {'movie': movie, 'director': director, 'dm': dm, 'am':am, 'actors_n': actors_name, 'other_movies': other_movies}
    return render(request, 'moviesite/movie_info.html', context)

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
    cursor.execute("Select * from movie where id = " + str(book_id))
    rows = cursor.fetchone()
    return render(request, 'description.html', {'data': rows})

def delete(request, book_id):
    cursor = connection.cursor()
    cursor.callproc('deletemovie', [book_id])
    cursor.close()
    return redirect('/home')

def updated(request, book_id):
    cursor = connection.cursor()
    title = request.POST.get('m_title')
    author = request.POST.get('m_desc')
    date = request.POST.get('')
    price = request.POST.get('isbn')
    isbn = request.POST.get('price')
    cursor.callproc('update_book', [book_id, title, author, date,
                                         isbn, price])
    cursor.close()
    return redirect('/books/' + str(book_id))




