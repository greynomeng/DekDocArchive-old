from django.contrib import admin
from django.urls import path, include

from docs import views

app_name = 'docs'

urlpatterns = [
    path('', views.home, name='home'),
    path('index/', views.IndexView.as_view(), name='index'),
]
