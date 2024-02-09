from django.urls import path
from home import views as views_home

urlpatterns = [
    path('', views_home.home_view, name='view1'),
    path('login/', views_home.home_view2, name='view2'),
    path('form/', views_home.home_view3, name='view3')
]
