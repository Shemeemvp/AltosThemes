# Generated by Django 4.1 on 2023-07-13 13:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Theme', '0011_testimonials_testimonial_tag'),
    ]

    operations = [
        migrations.AddField(
            model_name='admin_data',
            name='u_username',
            field=models.CharField(blank=True, default='', max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='admin_data',
            name='u_password',
            field=models.CharField(blank=True, default='', max_length=255, null=True),
        ),
    ]