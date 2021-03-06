# Generated by Django 3.2.4 on 2021-06-24 22:40

import ckeditor.fields
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('slug', models.SlugField(max_length=100)),
            ],
            options={
                'verbose_name_plural': 'Categories',
            },
        ),
        migrations.CreateModel(
            name='Document',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=500)),
                ('summary', models.CharField(blank=True, max_length=500, null=True)),
                ('doc_date', models.DateField(blank=True, null=True, verbose_name='Document Date:')),
                ('dutch_text', ckeditor.fields.RichTextField(blank=True, null=True)),
                ('english_text', ckeditor.fields.RichTextField(blank=True, null=True)),
                ('notes', ckeditor.fields.RichTextField(blank=True, null=True)),
                ('slug', models.SlugField(blank=True, null=True)),
                ('status', models.CharField(choices=[('c', 'Completed'), ('p', 'Pending'), ('n', 'See Notes')], default='p', help_text='Status', max_length=1)),
                ('updated', models.DateField(auto_now=True, verbose_name='Updated:')),
                ('author', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('category', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='docs.category')),
            ],
        ),
        migrations.CreateModel(
            name='DocImage',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('caption', models.CharField(blank=True, max_length=255, null=True)),
                ('image', models.ImageField(upload_to='images/documents')),
                ('doc', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='docs.document')),
            ],
        ),
    ]
