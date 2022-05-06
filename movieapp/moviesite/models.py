from django.db import models

class Movie(models.Model):
    m_id = models.BigIntegerField(primary_key=True)
    m_imdb = models.CharField(max_length=200)
    m_title = models.CharField(max_length=200)
    m_release_date = models.DateField()
    m_poster_path = models.CharField(max_length=200)
    m_rating = models.CharField(max_length=200)

    class Meta:
        managed = False
        db_table = 'movie'
class Actor(models.Model):
    a_id = models.BigIntegerField(primary_key=True)
    a_name = models.CharField(max_length=200)
    a_surname = models.CharField(max_length=200)
    a_age = models.BigIntegerField()
    a_photo_path = models.CharField(max_length=200)

    class Meta:
        managed = False
        db_table = 'actor'


class Actormovie(models.Model):
    a = models.ForeignKey(Actor, models.DO_NOTHING)
    m = models.ForeignKey('Movie', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'actormovie'
class Director(models.Model):
    d_id = models.BigIntegerField(primary_key=True)
    d_name = models.CharField(max_length=200)
    d_surname = models.CharField(max_length=200)
    d_age = models.BigIntegerField()
    d_photo_path = models.CharField(max_length=200)

    class Meta:
        managed = False
        db_table = 'director'


class Directormovie(models.Model):
    d = models.ForeignKey(Director, models.DO_NOTHING)
    m = models.ForeignKey('Movie', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'directormovie'
class Person(models.Model):
    p_id = models.BigIntegerField(primary_key=True)
    p_nickname = models.CharField(max_length=50)
    p_name = models.CharField(max_length=50)
    p_surname = models.CharField(max_length=50)
    p_age = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'person'


class Personroles(models.Model):
    r = models.ForeignKey('Roles', models.DO_NOTHING)
    p = models.ForeignKey(Person, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'personroles'
class Roles(models.Model):
    r_id = models.BigIntegerField(primary_key=True)
    r_name = models.CharField(max_length=200)
    r_description = models.CharField(max_length=200, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'roles'