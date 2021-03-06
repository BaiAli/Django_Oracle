# Generated by Django 4.0.4 on 2022-05-10 09:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('moviesite', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Generes',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('g_id', models.BigIntegerField(blank=True, null=True)),
                ('g_name', models.CharField(blank=True, max_length=200, null=True)),
            ],
            options={
                'db_table': 'generes',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Generesmovie',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('gm', models.BigIntegerField(blank=True, null=True)),
                ('g_id', models.BigIntegerField(blank=True, null=True)),
                ('m_id', models.BigIntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'generesmovie',
                'managed': False,
            },
        ),
    ]
