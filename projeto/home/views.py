from django.shortcuts import render

# Create your views here.

def home_view (request):
    return render(
        request, 
        'home/index.html'
    )

def home_view2 (request):
    return render(
        request, 
        'home/index2.html'
    )