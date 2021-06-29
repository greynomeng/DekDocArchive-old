from django.shortcuts import render, get_object_or_404
from django.urls import reverse_lazy
from django.views.generic import ListView, DetailView, CreateView

from docs.models import Document, DocImage
from docs.templates.docs.forms import CreateDocumentForm


def home(request):
    return render(request, 'docs/home.html')


"""
TODO Filter on tag.
"""


class IndexView(ListView):
    model = Document
    template_name = 'docs/index.html'
    ordering = ['doc_date']
    paginate_by = 10

    def get_context_data(self, *args, **kwargs):
        context = super(IndexView, self).get_context_data(*args, **kwargs)
        context['status'] = self.kwargs.get('status', None)
        return context

    def get_queryset(self, **kwargs):
        queryset = super(IndexView, self).get_queryset(**kwargs)
        # Filter by status.
        selection = self.kwargs.get('status', None)
        if selection:
            return queryset.filter(status=selection)

        return queryset


class DocumentDetailView(DetailView):
    model = Document
    template_name = 'docs/doc_detail.html'

    def get_context_data(self, **kwargs):
        context = super(DocumentDetailView, self).get_context_data(**kwargs)
        doc = get_object_or_404(Document, slug=self.kwargs['slug'])
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


class CreateDocument(CreateView):
    model = Document
    form_class = CreateDocumentForm
    template_name = 'docs/create_doc.html'
    success_url = reverse_lazy('docs:index')
