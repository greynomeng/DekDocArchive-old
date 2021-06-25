from django.http import HttpResponse
from django.shortcuts import render, get_object_or_404
from django.views.generic import ListView, DetailView

from docs.models import Document, DocImage


def home(request):
    return render(request, 'docs/home.html')


class IndexView(ListView):
    model = Document
    template_name = 'docs/index.html'
    ordering = ['doc_date']
    paginate_by = 6

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        return context


class DocumentDetailView(DetailView):
    model = Document
    template_name = 'docs/doc_detail.html'

    def get_context_data(self, **kwargs):
        context = super(DocumentDetailView, self).get_context_data(**kwargs)
        doc = get_object_or_404(Document, id=self.kwargs['pk'])
        context['doc'] = doc
        return context


class ImageDetailView(DetailView):
    model = DocImage
    template_name = 'docs/image_detail.html'

    def get_context_data(self, **kwargs):
        context = super(ImageDetailView, self).get_context_data(**kwargs)
        if 'pk' in self.kwargs:
            context['docimage'] = get_object_or_404(DocImage, id=self.kwargs['pk'])

        return context
