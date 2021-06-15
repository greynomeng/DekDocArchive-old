from django.http import HttpResponse
from django.shortcuts import render


def home(request):
    return render(request, 'docs/home.html')


def index(request):
    return render(request, 'docs/index.html')
