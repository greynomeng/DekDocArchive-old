# Generated by Django 3.2.4 on 2021-06-25 03:43

from django.db import migrations
import taggit.managers


class Migration(migrations.Migration):

    dependencies = [
        ('taggit', '0003_taggeditem_add_unique_index'),
        ('docs', '0002_alter_document_slug'),
    ]

    operations = [
        migrations.AddField(
            model_name='document',
            name='tags',
            field=taggit.managers.TaggableManager(help_text='A comma-separated list of tags.', through='taggit.TaggedItem', to='taggit.Tag', verbose_name='Tags'),
        ),
    ]
