# Generated by Django 4.1 on 2023-07-27 15:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Theme', '0014_remove_uploadedfile_categori_templates_template_code_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='uploadedfile',
            name='temp_filename',
            field=models.CharField(blank=True, default='', max_length=255, null=True),
        ),
    ]
