# Generated by Django 4.1 on 2023-07-27 14:45

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Theme', '0013_uploadedfile'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='uploadedfile',
            name='categori',
        ),
        migrations.AddField(
            model_name='templates',
            name='template_code',
            field=models.CharField(blank=True, default=0, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='uploadedfile',
            name='temp_code',
            field=models.ForeignKey(default='', null=True, on_delete=django.db.models.deletion.CASCADE, to='Theme.templates'),
        ),
        migrations.AlterField(
            model_name='templates',
            name='template_status',
            field=models.CharField(blank=True, default='ALTS000', max_length=255, null=True),
        ),
    ]