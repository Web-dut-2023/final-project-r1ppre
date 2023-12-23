import json
import random
from datetime import datetime, timedelta
import pytz
from datetime import datetime
from django.shortcuts import render, HttpResponse
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from app01 import models
from app01.utils.bootstrap import BootStrapModelForm
from app01.utils.pagination import Pagination
# from app01.views.orderpanhe import OrderpanheModelForm


class OrderpanheModelForm(BootStrapModelForm):
    class Meta:
        model = models.Orderpanhe
        # fields = "__all__"
        # fields = [""]
        exclude = ["oid", 'admin']


def orderpanhe_list(request):
    admin_id = request.session["info"]["id"]
    queryset = models.Orderpanhe.objects.filter(admin_id=admin_id).order_by('-id')
    for index, obj in enumerate(queryset):
        obj.id = index + 1
    page_object = Pagination(request, queryset)
    form = OrderpanheModelForm()
    context = {
        'form': form,
        "queryset": page_object.page_queryset,  # 分完页的数据
        "page_string": page_object.html()  # 生成页码
    }

    return render(request, 'orderpanhe_list.html', context)


@csrf_exempt
def orderpanhe_add(request):
    """ 新建订单（Ajax请求）"""
    """ 新建订单（Ajax请求）"""

    # form = OrderModelForm(data=request.POST)
    title = request.POST.get('title')
    time = request.POST.get('time')
    time1 = request.POST.get('date')
    if time == '1':
        tz = pytz.timezone('Asia/Shanghai')  # 设置时区
        now = datetime.now(tz)
        if time1 == '0':
            price = now.replace(hour=7, minute=0, second=0, microsecond=0)
            endtime = price.replace(hour=8, minute=0, second=0, microsecond=0)
        elif time1 == '1':
            price = now + timedelta(days=1)
            price = datetime(price.year, price.month, price.day, 7, 0, 0)
            endtime = now + timedelta(days=1)
            endtime = datetime(endtime.year, endtime.month, endtime.day, 8, 0, 0)
        elif time1 == '2':
            price = now + timedelta(days=2)
            price = datetime(price.year, price.month, price.day, 7, 0, 0)
            endtime = now + timedelta(days=2)
            endtime = datetime(endtime.year, endtime.month, endtime.day, 8, 0, 0)
        count =models.Orderpanhe.objects.filter(title=title,price=price,endtime=endtime).count()
        if title == '舞蹈房' or title == '瑜伽室' or title == '体测室' or title == '篮球馆' or title == '游泳池':
            count1 =30
        else:
            count1=4
        if count>=count1:
            error_message = "该时间段已经有4个预约了，请选择其他时间段"
            return JsonResponse({"status": False, "error": error_message})
        # 用户id
        admin_id= request.session["info"]["id"]
        # 生成订单id
        oid = datetime.now().strftime("%Y%m%d%H%M%S") + str(random.randint(1000, 9999))
        models.Orderpanhe.objects.create(oid=oid,title=title,price=price,endtime=endtime,admin_id=admin_id);

        return JsonResponse({"status": True})


        return JsonResponse({"status": True})
    if time == '2':
        # 下面三行生成时间段
        tz = pytz.timezone('Asia/Shanghai')  # 设置时区
        now = datetime.now(tz)
        if time1 == '0':
            price = now.replace(hour=8, minute=0, second=0, microsecond=0)
            endtime = price.replace(hour=10, minute=0, second=0, microsecond=0)
        elif time1 == '1':
            price = now + timedelta(days=1)
            price = datetime(price.year, price.month, price.day, 8, 0, 0)
            endtime = now + timedelta(days=1)
            endtime = datetime(endtime.year, endtime.month, endtime.day, 10, 0, 0)
        elif time1 == '2':
            price = now + timedelta(days=2)
            price = datetime(price.year, price.month, price.day, 8, 0, 0)
            endtime = now + timedelta(days=2)
            endtime = datetime(endtime.year, endtime.month, endtime.day, 10, 0, 0)
        count =models.Orderpanhe.objects.filter(title=title,price=price,endtime=endtime).count()
        if title == '舞蹈房' or title == '瑜伽室' or title == '体测室' or title == '篮球馆' or title == '游泳池':
            count1 =30
        else:
            count1=4
        if count>=count1:
            error_message = "该时间段已经有4个预约了，请选择其他时间段"
            return JsonResponse({"status": False, "error": error_message})
        # 用户id
        admin_id= request.session["info"]["id"]
        # 生成订单id
        oid = datetime.now().strftime("%Y%m%d%H%M%S") + str(random.randint(1000, 9999))
        models.Orderpanhe.objects.create(oid=oid,title=title,price=price,endtime=endtime,admin_id=admin_id);

        return JsonResponse({"status": True})


        return JsonResponse({"status": True})
    if time == '3':
        # 下面三行生成时间段
        tz = pytz.timezone('Asia/Shanghai')  # 设置时区
        now = datetime.now(tz)
        if time1 == '0':
            price = now.replace(hour=10, minute=0, second=0, microsecond=0)
            endtime = price.replace(hour=12, minute=0, second=0, microsecond=0)
        elif time1 == '1':
            price = now + timedelta(days=1)
            price = datetime(price.year, price.month, price.day, 10, 0, 0)
            endtime = now + timedelta(days=1)
            endtime = datetime(endtime.year, endtime.month, endtime.day, 12, 0, 0)
        elif time1 == '2':
            price = now + timedelta(days=2)
            price = datetime(price.year, price.month, price.day, 10, 0, 0)
            endtime = now + timedelta(days=2)
            endtime = datetime(endtime.year, endtime.month, endtime.day, 12, 0, 0)
        count =models.Orderpanhe.objects.filter(title=title,price=price,endtime=endtime).count()
        if title == '舞蹈房' or title == '瑜伽室' or title == '体测室' or title == '篮球馆' or title == '游泳池':
            count1 =30
        else:
            count1=4
        if count>=count1:
            error_message = "该时间段已经有4个预约了，请选择其他时间段"
            return JsonResponse({"status": False, "error": error_message})
        # 用户id
        admin_id= request.session["info"]["id"]
        # 生成订单id
        oid = datetime.now().strftime("%Y%m%d%H%M%S") + str(random.randint(1000, 9999))
        models.Orderpanhe.objects.create(oid=oid,title=title,price=price,endtime=endtime,admin_id=admin_id);

        return JsonResponse({"status": True})


        return JsonResponse({"status": True})
    if time == '4':
        # 下面三行生成时间段
        tz = pytz.timezone('Asia/Shanghai')  # 设置时区
        now = datetime.now(tz)
        if time1 == '0':
            price = now.replace(hour=12, minute=0, second=0, microsecond=0)
            endtime = price.replace(hour=14, minute=0, second=0, microsecond=0)
        elif time1 == '1':
            price = now + timedelta(days=1)
            price = datetime(price.year, price.month, price.day, 12, 0, 0)
            endtime = now + timedelta(days=1)
            endtime = datetime(endtime.year, endtime.month, endtime.day, 14, 0, 0)
        elif time1 == '2':
            price = now + timedelta(days=2)
            price = datetime(price.year, price.month, price.day, 12, 0, 0)
            endtime = now + timedelta(days=2)
            endtime = datetime(endtime.year, endtime.month, endtime.day, 14, 0, 0)
        count =models.Orderpanhe.objects.filter(title=title,price=price,endtime=endtime).count()
        if title == '舞蹈房' or title == '瑜伽室' or title == '体测室' or title == '篮球馆' or title == '游泳池':
            count1 =30
        else:
            count1=4
        if count>=count1:
            error_message = "该时间段已经有4个预约了，请选择其他时间段"
            return JsonResponse({"status": False, "error": error_message})
        # 用户id
        admin_id= request.session["info"]["id"]
        # 生成订单id
        oid = datetime.now().strftime("%Y%m%d%H%M%S") + str(random.randint(1000, 9999))
        models.Orderpanhe.objects.create(oid=oid,title=title,price=price,endtime=endtime,admin_id=admin_id);

        return JsonResponse({"status": True})


        return JsonResponse({"status": True})
    if time == '5':
        # 下面三行生成时间段
        tz = pytz.timezone('Asia/Shanghai')  # 设置时区
        now = datetime.now(tz)
        if time1 == '0':
            price = now.replace(hour=16, minute=0, second=0, microsecond=0)
            endtime = price.replace(hour=18, minute=0, second=0, microsecond=0)
        elif time1 == '1':
            price = now + timedelta(days=1)
            price = datetime(price.year, price.month, price.day, 16, 0, 0)
            endtime = now + timedelta(days=1)
            endtime = datetime(endtime.year, endtime.month, endtime.day, 18, 0, 0)
        elif time1 == '2':
            price = now + timedelta(days=2)
            price = datetime(price.year, price.month, price.day, 16, 0, 0)
            endtime = now + timedelta(days=2)
            endtime = datetime(endtime.year, endtime.month, endtime.day, 18, 0, 0)
        count =models.Orderpanhe.objects.filter(title=title,price=price,endtime=endtime).count()
        if title == '舞蹈房' or title == '瑜伽室' or title == '体测室' or title == '篮球馆' or title == '游泳池':
            count1 =30
        else:
            count1=4
        if count>=count1:
            error_message = "该时间段已经有4个预约了，请选择其他时间段"
            return JsonResponse({"status": False, "error": error_message})
        # 用户id
        admin_id= request.session["info"]["id"]
        # 生成订单id
        oid = datetime.now().strftime("%Y%m%d%H%M%S") + str(random.randint(1000, 9999))
        models.Orderpanhe.objects.create(oid=oid,title=title,price=price,endtime=endtime,admin_id=admin_id);

        return JsonResponse({"status": True})


        return JsonResponse({"status": True})
    if time == '6':
        # 下面三行生成时间段
        tz = pytz.timezone('Asia/Shanghai')  # 设置时区
        now = datetime.now(tz)
        if time1 == '0':
            price = now.replace(hour=18, minute=0, second=0, microsecond=0)
            endtime = price.replace(hour=20, minute=0, second=0, microsecond=0)
        elif time1 == '1':
            price = now + timedelta(days=1)
            price = datetime(price.year, price.month, price.day, 18, 0, 0)
            endtime = now + timedelta(days=1)
            endtime = datetime(endtime.year, endtime.month, endtime.day, 20, 0, 0)
        elif time1 == '2':
            price = now + timedelta(days=2)
            price = datetime(price.year, price.month, price.day, 18, 0, 0)
            endtime = now + timedelta(days=2)
            endtime = datetime(endtime.year, endtime.month, endtime.day, 20, 0, 0)
        count =models.Orderpanhe.objects.filter(title=title,price=price,endtime=endtime).count()
        if title == '舞蹈房' or title == '瑜伽室' or title == '体测室' or title == '篮球馆' or title == '游泳池':
            count1 =30
        else:
            count1=4
        if count>=count1:
            error_message = "该时间段已经有4个预约了，请选择其他时间段"
            return JsonResponse({"status": False, "error": error_message})
        # 用户id
        admin_id= request.session["info"]["id"]
        # 生成订单id
        oid = datetime.now().strftime("%Y%m%d%H%M%S") + str(random.randint(1000, 9999))
        models.Orderpanhe.objects.create(oid=oid,title=title,price=price,endtime=endtime,admin_id=admin_id);

        return JsonResponse({"status": True})


        return JsonResponse({"status": True})
    if time == '7':
        # 下面三行生成时间段
        tz = pytz.timezone('Asia/Shanghai')  # 设置时区
        now = datetime.now(tz)
        if time1 == '0':
            price = now.replace(hour=20, minute=0, second=0, microsecond=0)
            endtime = price.replace(hour=22, minute=0, second=0, microsecond=0)
        elif time1 == '1':
            price = now + timedelta(days=1)
            price = datetime(price.year, price.month, price.day, 20, 0, 0)
            endtime = now + timedelta(days=1)
            endtime = datetime(endtime.year, endtime.month, endtime.day, 22, 0, 0)
        elif time1 == '2':
            price = now + timedelta(days=2)
            price = datetime(price.year, price.month, price.day, 20, 0, 0)
            endtime = now + timedelta(days=2)
            endtime = datetime(endtime.year, endtime.month, endtime.day, 22, 0, 0)
        count =models.Orderpanhe.objects.filter(title=title,price=price,endtime=endtime).count()
        if title == '舞蹈房' or title == '瑜伽室' or title == '体测室' or title == '篮球馆' or title == '游泳池':
            count1 =30
        else:
            count1=4
        if count>=count1:
            error_message = "该时间段已经有4个预约了，请选择其他时间段"
            return JsonResponse({"status": False, "error": error_message})
        # 用户id
        admin_id= request.session["info"]["id"]
        # 生成订单id
        oid = datetime.now().strftime("%Y%m%d%H%M%S") + str(random.randint(1000, 9999))
        models.Orderpanhe.objects.create(oid=oid,title=title,price=price,endtime=endtime,admin_id=admin_id);

        return JsonResponse({"status": True})

        return JsonResponse({"status": True})




def orderpanhe_delete(request):
    """ 删除订单 """
    uid = request.GET.get('uid')
    exists = models.Orderpanhe.objects.filter(oid=uid).exists()
    if not exists:
        return JsonResponse({"status": False, 'error': "删除失败，数据不存在。"})

    models.Orderpanhe.objects.filter(oid=uid).delete()
    return JsonResponse({"status": True})


def orderpanhe_detail(request):
    uid = request.GET.get("uid")
    row_dict = models.Orderpanhe.objects.filter(id=uid).values("title", 'price', 'status').first()
    if not row_dict:
        return JsonResponse({"status": False, 'error': "数据不存在。"})

    # 从数据库中获取到一个对象 row_object
    result = {
        "status": True,
        "data": row_dict
    }
    return JsonResponse(result)


@csrf_exempt
def orderpanhe_edit(request):
    """ 编辑订单 """
    uid = request.GET.get("uid")
    row_object = models.Orderpanhe.objects.filter(id=uid).first()
    if not row_object:
        return JsonResponse({"status": False, 'tips': "数据不存在，请刷新重试。"})

    form = OrderpanheModelForm(data=request.POST, instance=row_object)
    if form.is_valid():
        form.save()
        return JsonResponse({"status": True})

    return JsonResponse({"status": False, 'error': form.errors})
