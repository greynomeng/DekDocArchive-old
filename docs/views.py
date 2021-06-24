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


def image_detail(request, pk):
    docimage = DocImage.objects.get(id=pk)
    return render(request, 'docs/image_detail.html', {'docimage': docimage})
