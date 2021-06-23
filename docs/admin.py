from django.contrib import admin
from django.utils.text import slugify

from docs.models import Document, Category


class DocumentAdmin(admin.ModelAdmin):
    list_display = ('title', 'summary', 'doc_date', 'updated', 'author', 'category', 'status',)

    fields = [
        ('title', 'summary',),
        ('doc_date',),
        ('author', 'category', 'status',),
        'dutch_text', 'english_text', 'notes',
    ]
    readonly_fields = ['slug', 'updated']


admin.site.register(Document, DocumentAdmin)


class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug',)
    prepopulated_fields = {'slug': ('name',)}


admin.site.register(Category, CategoryAdmin)
