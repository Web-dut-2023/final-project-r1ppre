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
from app01.views.depart import OrderModelForm


def departpanhe_list(request):
    data_dict = {}
    search_data = request.GET.get('q', "")
    form = OrderModelForm()
    if search_data:
        data_dict["title__contains"] = search_data
    queryset = models.Departmentpanhe.objects.filter(**data_dict)
    page_object = Pagination(request, queryset)
    context = {
        'form': form,
        "search_data": search_data,
        "queryset": page_object.page_queryset,  # 分完页的数据
        "page_string": page_object.html()  # 页码
    }

    return render(request, 'departpanhe_list.html', context)

@csrf_exempt
def departpanhe_add(request):
    """ 新建订单（Ajax请求）"""

    form = OrderModelForm(data=request.POST)
    print('8888888')

    if form.is_valid():
        print('4444')
        # 订单号：额外增加一些不是用户输入的值（自己计算出来）
        form.instance.oid = datetime.now().strftime("%Y%m%d%H%M%S") + str(random.randint(1000, 9999))

        # 固定设置管理员ID，去哪里获取？
        form.instance.admin_id = request.session["info"]["oid"]

        # 保存到数据库中
        form.save()
        return JsonResponse({"status": True})
    return JsonResponse({"status": False, 'error': form.errors})

def departpanhe_delete(request):
    """ 删除部门 """
    # 获取ID http://127.0.0.1:8000/departpanhe/delete/?nid=1
    nid = request.GET.get('nid')

    # 删除
    models.Departmentpanhe.objects.filter(id=nid).delete()

    # 重定向回部门列表
    return redirect("/departpanhe/list/")
def departpanhe_edit(request, nid):
    """ 修改部门 """
    if request.method == "GET":
        # 根据nid，获取他的数据 [obj,]
        row_object = models.Departmentpanhe.objects.filter(id=nid).first()
        return render(request, 'departpanhe_edit.html', {"row_object": row_object})

    # 获取用户提交的标题
    title = request.POST.get("title")

    models.Departmentpanhe.objects.filter(id=nid).update(title=title)

    # 重定向回部门列表
    return redirect("/departpanhe/list/")

