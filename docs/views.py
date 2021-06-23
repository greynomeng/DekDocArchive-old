

from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic import ListView

from docs.models import Document


def home(request):
    return render(request, 'docs/home.html')


# def index(request):
#     return render(request, 'docs/index.html')


class IndexView(ListView):
    model = Document
    template_name = 'docs/index.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        return context

