from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic import ListView

from docs.models import Document


def home(request):
    return render(request, 'docs/home.html')


class IndexView(ListView):
    model = Document
    template_name = 'docs/index.html'
    ordering = ['doc_date']

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        return context
