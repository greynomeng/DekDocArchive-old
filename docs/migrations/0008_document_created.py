# Generated by Django 3.2.4 on 2021-06-29 02:34

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('docs', '0007_alter_document_title'),
    ]

    operations = [
        migrations.AddField(
            model_name='document',
            name='created',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now, verbose_name='Created:'),
            preserve_default=False,
        ),
    ]
