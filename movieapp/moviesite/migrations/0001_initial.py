# Generated by Django 4.0.2 on 2022-05-07 06:49

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Actor',
            fields=[
                ('a_id', models.BigIntegerField(primary_key=True, serialize=False)),
                ('a_name', models.CharField(max_length=200)),
                ('a_surname', models.CharField(max_length=200)),
                ('a_age', models.BigIntegerField()),
                ('a_photo_path', models.CharField(max_length=200)),
            ],
            options={
                'db_table': 'actor',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Actormovie',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'actormovie',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Director',
            fields=[
                ('d_id', models.BigIntegerField(primary_key=True, serialize=False)),
                ('d_name', models.CharField(max_length=200)),
                ('d_surname', models.CharField(max_length=200)),
                ('d_age', models.BigIntegerField()),
                ('d_photo_path', models.CharField(max_length=200)),
            ],
            options={
                'db_table': 'director',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Directormovie',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'directormovie',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Movie',
            fields=[
                ('m_id', models.BigIntegerField(primary_key=True, serialize=False)),
                ('m_imdb', models.CharField(max_length=200)),
                ('m_title', models.CharField(max_length=200)),
                ('m_release_date', models.DateField()),
                ('m_poster_path', models.CharField(max_length=200)),
                ('m_rating', models.CharField(max_length=200)),
            ],
            options={
                'db_table': 'movie',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Person',
            fields=[
                ('p_id', models.BigIntegerField(primary_key=True, serialize=False)),
                ('p_nickname', models.CharField(max_length=50)),
                ('p_name', models.CharField(max_length=50)),
                ('p_surname', models.CharField(max_length=50)),
                ('p_age', models.IntegerField()),
            ],
            options={
                'db_table': 'person',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Personroles',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'personroles',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Roles',
            fields=[
                ('r_id', models.BigIntegerField(primary_key=True, serialize=False)),
                ('r_name', models.CharField(max_length=200)),
                ('r_description', models.CharField(blank=True, max_length=200, null=True)),
            ],
            options={
                'db_table': 'roles',
                'managed': False,
            },
        ),
    ]
