# Generated by Django 4.1 on 2023-07-10 08:02

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Theme', '0002_alter_categorie_categorie_image'),
    ]

    operations = [
        migrations.CreateModel(
            name='Templates',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('template_image', models.ImageField(blank=True, null=True, upload_to='templates_images')),
                ('template_name', models.CharField(blank=True, default='', max_length=255, null=True)),
                ('template_discription', models.TextField(blank=True, default='', null=True)),
                ('template_status', models.CharField(blank=True, default=0, max_length=255, null=True)),
                ('template_time', models.TimeField(blank=True, max_length=100, null=True)),
                ('template_publish_date', models.DateField(blank=True, max_length=255, null=True)),
                ('template_img_alttag', models.TextField(blank=True, default='', null=True)),
                ('template_price', models.CharField(blank=True, default=0, max_length=255, null=True)),
                ('template_rating', models.CharField(blank=True, default=0, max_length=255, null=True)),
                ('video_file', models.FileField(upload_to='tempvideo/')),
                ('categori_id', models.ForeignKey(default='', null=True, on_delete=django.db.models.deletion.CASCADE, to='Theme.categorie')),
            ],
        ),
    ]
