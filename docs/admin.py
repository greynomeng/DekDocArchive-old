from django.contrib import admin
from django.utils.text import slugify

from docs.models import Document, Category, DocImage


# class DocImageAdmin(admin.ModelAdmin):
#     model = DocImage
#
#
# admin.site.register(DocImage, DocImageAdmin)


class DocImageInLine(admin.TabularInline):
    model = DocImage
    extra = 4


class DocumentAdmin(admin.ModelAdmin):
    # list_display = ('title', 'summary', 'doc_date', 'updated', 'author', 'category', 'status', 'tag_list',)
    fieldsets = (
        ('Header', {
            'fields': (
                ('title', 'summary'),
                ('doc_date', 'author'),
                ('category', 'status', 'tags'),)
        }),
        ('Translations', {
            'fields': (('dutch_text', 'english_text'), 'notes',)
        }),
    )
    inlines = [
        DocImageInLine
    ]


admin.site.register(Document, DocumentAdmin)


class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug',)
    prepopulated_fields = {'slug': ('name',)}


admin.site.register(Category, CategoryAdmin)
