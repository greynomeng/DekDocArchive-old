from ckeditor.fields import RichTextField
from django.contrib.auth.models import User
from django.db import models
from django.utils.text import slugify


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

    title = models.CharField(max_length=500, blank=False, null=False)
    summary = models.CharField(max_length=500, blank=True, null=True)
    doc_date = models.DateField(blank=True, null=True, verbose_name='Document Date:')
    dutch_text = RichTextField(blank=True, null=True)
    english_text = RichTextField(blank=True, null=True)
    notes = RichTextField(blank=True, null=True)
    category = models.ForeignKey(Category, null=True, blank=True, on_delete=models.CASCADE)
    slug = models.SlugField(null=True, blank=True)
    status = models.CharField(max_length=1, choices=JOB_STATUS, blank=False, default='p', help_text='Status')
    updated = models.DateField(auto_now=True, verbose_name='Updated:')
    author = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)

    # tags =

    def __str__(self):
        return self.title

    def save(self, *args, **kwargs):
        self.slug = slugify(str(self.doc_date) + ' ' + str(self.category) + ' ' + str(self.title))
        super(Document, self).save(*args, **kwargs)
