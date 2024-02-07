from django.urls import path
from home import views as views_home

urlpatterns = [
    path('', views_home.home_view, name='view1'),
    path('view2/', views_home.home_view2)
]
