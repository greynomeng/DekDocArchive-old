# Generated by Django 3.2.4 on 2021-06-29 02:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('docs', '0006_alter_document_updated'),
    ]

    operations = [
        migrations.AlterField(
            model_name='document',
            name='title',
            field=models.CharField(max_length=500, unique=True),
        ),
    ]
