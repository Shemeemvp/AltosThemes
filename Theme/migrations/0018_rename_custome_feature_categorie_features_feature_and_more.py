# Generated by Django 4.1 on 2023-08-03 11:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Theme', '0017_categorie_features_categorie_details'),
    ]

    operations = [
        migrations.RenameField(
            model_name='categorie_features',
            old_name='custome_feature',
            new_name='feature',
        ),
        migrations.RemoveField(
            model_name='categorie_features',
            name='mailn_feature',
        ),
        migrations.AddField(
            model_name='categorie_features',
            name='type_feature',
            field=models.CharField(blank=True, default='', max_length=255, null=True),
        ),
    ]