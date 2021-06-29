from ckeditor.fields import RichTextField
from django.contrib.auth.models import User
from django.db import models
from django.db.models.signals import pre_save
from django.urls import reverse, reverse_lazy
from django.utils.text import slugify
from imagekit.models import ImageSpecField
from pilkit.processors import ResizeToFill
from taggit.managers import TaggableManager


class Category(models.Model):
    name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100)

    class Meta:
        verbose_name_plural = 'Categories'

    def __str__(self):
        return self.name


class Document(models.Model):
    JOB_STATUS = (
        ('c', 'Completed'),
        ('p', 'Pending'),
        ('n', 'See Notes'),
    )

    title = models.CharField(max_length=500, blank=False, null=False, unique=True)
    summary = models.CharField(max_length=500, blank=True, null=True)
    doc_date = models.DateField(blank=True, null=True, verbose_name='Document Date:')
    dutch_text = RichTextField(config_name='form_ckeditor', blank=True, null=True)
    english_text = RichTextField(config_name='form_ckeditor', blank=True, null=True)
    notes = RichTextField(config_name='form_ckeditor', blank=True, null=True)
    category = models.ForeignKey(Category, null=True, blank=True, on_delete=models.CASCADE)
    slug = models.SlugField(max_length=500, null=True, blank=True, unique=True)
    status = models.CharField(max_length=1, choices=JOB_STATUS, blank=False, default='p', help_text='Status')
    updated = models.DateTimeField(auto_now=True, verbose_name='Updated:')
    author = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)

    tags = TaggableManager(blank=True)

    def __str__(self):
        return self.title


def pre_save_document_receiver(sender, instance, *args, **kwargs):
    if not instance.slug:
        instance.slug = slugify(str(instance.doc_date) + ' ' + str(instance.category) + ' ' + str(instance.title))


pre_save.connect(pre_save_document_receiver, sender=Document)


class DocImage(models.Model):
    caption = models.CharField(max_length=255, null=True, blank=True)
    image = models.ImageField(upload_to='images/documents')
    image_thumbnail = ImageSpecField(
        source='image',
        processors=[ResizeToFill(210, 300)],
        format='JPEG'
    )
    doc = models.ForeignKey(Document, on_delete=models.CASCADE)
