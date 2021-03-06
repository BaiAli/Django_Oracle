from django.db import models

class Actor(models.Model):
    a_id = models.BigIntegerField(primary_key=True)
    a_name = models.CharField(max_length=200, blank=True, null=True)
    a_surname = models.CharField(max_length=200, blank=True, null=True)
    a_size = models.BigIntegerField()
    a_home_town = models.CharField(max_length=200, blank=True, null=True)
    a_generes = models.CharField(max_length=200, blank=True, null=True)
    a_movie_count = models.CharField(max_length=200, blank=True, null=True)
    a_age = models.BigIntegerField(blank=True, null=True)
    a_photo_path = models.CharField(max_length=200, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'actor'


class Actormovie(models.Model):
    am = models.BigIntegerField(primary_key=True)
    a = models.ForeignKey(Actor, models.DO_NOTHING)
    m = models.ForeignKey('Movie', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'actormovie'



class Director(models.Model):
    d_id = models.BigIntegerField(primary_key=True)
    d_name = models.CharField(max_length=200, blank=True, null=True)
    d_surname = models.CharField(max_length=200, blank=True, null=True)
    d_age = models.BigIntegerField(blank=True, null=True)
    d_photo_path = models.CharField(max_length=200, blank=True, null=True)
    d_home_town = models.CharField(max_length=200, blank=True, null=True)
    d_generes = models.CharField(max_length=200, blank=True, null=True)
    d_movie_count = models.CharField(max_length=200, blank=True, null=True)
    d_size = models.BigIntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'director'


class Directormovie(models.Model):
    pr = models.BigIntegerField(primary_key=True)
    d = models.ForeignKey(Director, models.DO_NOTHING)
    m = models.ForeignKey('Movie', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'directormovie'




class Generes(models.Model):
    g_id = models.BigIntegerField(primary_key=True)
    g_name = models.CharField(max_length=200, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'generes'


class Generesmovie(models.Model):
    gm = models.BigIntegerField(primary_key=True)
    g = models.ForeignKey(Generes, models.DO_NOTHING)
    m = models.ForeignKey('Movie', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'generesmovie'


class Movie(models.Model):
    m_id = models.BigIntegerField(primary_key=True)
    m_country = models.CharField(max_length=200, blank=True, null=True)
    m_word = models.CharField(max_length=200, blank=True, null=True)
    m_time = models.CharField(max_length=200, blank=True, null=True)
    m_imdb = models.CharField(max_length=200, blank=True, null=True)
    m_title = models.CharField(max_length=200, blank=True, null=True)
    m_release_date = models.DateField(blank=True, null=True)
    m_poster_path = models.CharField(max_length=200, blank=True, null=True)
    m_poster_path_2 = models.CharField(max_length=200, blank=True, null=True)
    m_poster_path_3 = models.CharField(max_length=200, blank=True, null=True)
    m_rating = models.CharField(max_length=200, blank=True, null=True)
    m_budget = models.CharField(max_length=200, blank=True, null=True)
    m_desc = models.CharField(max_length=1500, blank=True, null=True)

    def __str__(self):
        return self.m_title

    class Meta:
        managed = False
        db_table = 'movie'



class Person(models.Model):
    p_id = models.BigIntegerField(primary_key=True)
    p_nickname = models.CharField(max_length=50, blank=True, null=True)
    p_name = models.CharField(max_length=50, blank=True, null=True)
    p_surname = models.CharField(max_length=50, blank=True, null=True)
    p_age = models.BigIntegerField(blank=True, null=True)
    p_email = models.CharField(max_length=50, blank=True, null=True)
    p_password = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'person'


class Personroles(models.Model):
    pr = models.BigIntegerField(primary_key=True)
    r = models.ForeignKey('Roles', models.DO_NOTHING)
    p = models.ForeignKey(Person, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'personroles'


class Roles(models.Model):
    r_id = models.BigIntegerField(primary_key=True)
    r_name = models.CharField(max_length=200, blank=True, null=True)
    r_description = models.CharField(max_length=200, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'roles'