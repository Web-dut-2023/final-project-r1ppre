from django.shortcuts import render

#设置127.0.0.1:8000登陆首页
def home(request):
    return render(request, 'introduction.html')
