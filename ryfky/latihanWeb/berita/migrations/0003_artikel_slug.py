# Generated by Django 5.0.3 on 2024-06-11 08:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('berita', '0002_artikel_created_at_alter_artikel_thumbnail'),
    ]

    operations = [
        migrations.AddField(
            model_name='artikel',
            name='slug',
            field=models.SlugField(blank=True, max_length=255, null=True, unique=True),
        ),
    ]
