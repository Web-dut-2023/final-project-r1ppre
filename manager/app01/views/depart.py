import json
import random
from datetime import datetime
from django.http import JsonResponse
from django.shortcuts import render, redirect
from app01 import models
from app01.utils.bootstrap import BootStrapModelForm
from django.views.decorators.csrf import csrf_exempt
from app01.utils.pagination import Pagination
#from app01.utils.form import UserModelForm, PrettyModelForm, PrettyEditModelForm

class OrderModelForm(BootStrapModelForm):
    class Meta:
        model = models.Order
        # fields = "__all__"
        # fields = [""]
        exclude = ["oid",'admin']

def depart_list(request):
    data_dict = {}
    search_data = request.GET.get('q', "")
    form = OrderModelForm()

    if search_data:
        data_dict["title__contains"] = search_data
    queryset = models.Department.objects.filter(**data_dict)
    page_object = Pagination(request, queryset)
    context = {
        'form': form,
        "search_data": search_data,
        "queryset": page_object.page_queryset,  # 分完页的数据
        "page_string": page_object.html(),  # 页码
    }


    return render(request, 'depart_list.html', context)


@csrf_exempt
def depart_add(request):
    """ 新建订单（Ajax请求）"""

    form = OrderModelForm(data=request.POST)

    if form.is_valid():

        form.instance.oid = datetime.now().strftime("%Y%m%d%H%M%S") + str(random.randint(1000, 9999))

        form.instance.admin_id = request.session["info"]["id"]

        form.save()
        return JsonResponse({"status": True})
    return JsonResponse({"status": False, 'error': form.errors})



def depart_delete(request):
    """ 删除部门 """
    # 获取ID http://127.0.0.1:8000/depart/delete/?nid=1
    nid = request.GET.get('nid')

    # 删除
    models.Department.objects.filter(id=nid).delete()

    # 重定向回部门列表
    return redirect("/depart/list/")
def depart_edit(request, nid):
    """ 修改部门 """
    if request.method == "GET":
        # 根据nid，获取他的数据 [obj,]
        row_object = models.Department.objects.filter(id=nid).first()
        return render(request, 'depart_edit.html', {"row_object": row_object})


    # 获取用户提交的标题
    title = request.POST.get("title")

    # 根据ID找到数据库中的数据并进行更新

    models.Department.objects.filter(id=nid).update(title=title)

    # 重定向回部门列表
    return redirect("/depart/list/")

def locations(request):
       return render(request, 'locations.html')


def notice(request):
    return render(request, 'notice.html')
