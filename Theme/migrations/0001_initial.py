# Generated by Django 4.1 on 2023-07-07 14:35

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Categorie',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('categorie_image', models.ImageField(blank=True, null=True, upload_to='img/categori')),
                ('categorie_name', models.CharField(blank=True, default='', max_length=255, null=True)),
                ('status', models.CharField(blank=True, default=0, max_length=255, null=True)),
                ('time', models.TimeField(blank=True, max_length=100, null=True)),
                ('publish_date', models.DateField(blank=True, max_length=255, null=True)),
                ('img_alttag', models.TextField(blank=True, default='', null=True)),
            ],
        ),
    ]
