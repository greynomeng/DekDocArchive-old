from django.contrib import admin
from django.urls import path, include

from docs import views

app_name = 'docs'

urlpatterns = [
    path('', views.home, name='home'),
    path('index/', views.IndexView.as_view(), name='index'),
    path('index/<str:status>', views.IndexView.as_view(), name='index'),
    path('index/<str:tag>', views.IndexView.as_view(), name='index-tag'),
    path('doc/<slug:slug>/', views.DocumentDetailView.as_view(), name='doc-detail'),
    path('image/<int:pk>', views.ImageDetailView.as_view(), name='image-detail'),

    path('create_doc/', views.CreateDocument.as_view(), name='create-doc'),
]
