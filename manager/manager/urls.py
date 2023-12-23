"""manager URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path

from app01.views import depart, user,  account, task, order,orderpanhe
from app01.views import home
from app01.views.depart import locations, notice
from app01.views.departpanhe import departpanhe_list, departpanhe_add, departpanhe_delete, departpanhe_edit
from app01.views.introduction import introduction
from app01.views.orderpanhe import orderpanhe_list, orderpanhe_add, orderpanhe_delete, orderpanhe_detail, \
    orderpanhe_edit
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home.home, name="home"),
    # 部门场馆管理--d校区
    path('depart/list/', depart.depart_list),
    path('depart/add/', depart.depart_add),
    path('depart/delete/', depart.depart_delete),
    path('depart/<int:nid>/edit/', depart.depart_edit),
    # 场馆部门管理---panhe校区
    path('departpanhe/list/', departpanhe_list),
    path('departpanhe/add/', departpanhe_add),
    path('departpanhe/delete/', departpanhe_delete),
    path('departpanhe/<int:nid>/edit/', departpanhe_edit),


    # 用户管理
    path('user/list/', user.user_list),
    path('user/add/', user.user_add),
    path('user/model/form/add/', user.user_model_form_add),
    path('user/<int:nid>/edit/', user.user_edit),
    path('user/<int:nid>/delete/', user.user_delete),





    # 登录
    path('login/', account.login),
    path('logout/', account.logout),
    path('image/code/', account.image_code),

    # 任务管理
    path('task/list/', task.task_list),
    path('task/ajax/', task.task_ajax),
    path('task/add/', task.task_add),

    # 订单预约管理----d校区
    path('order/list/', order.order_list),
    path('order/add/', order.order_add),
    path('order/delete/', order.order_delete),
    path('order/detail/', order.order_detail),
    path('order/edit/', order.order_edit),
# 订单预约管理----panhe校区
    path('orderpanhe/list/', orderpanhe.orderpanhe_list),
    path('orderpanhe/add/', orderpanhe.orderpanhe_add),
    path('orderpanhe/delete/', orderpanhe.orderpanhe_delete),
    path('orderpanhe/detail/', orderpanhe.orderpanhe_detail),
    path('orderpanhe/edit/',orderpanhe.orderpanhe_edit),
# 体育馆介绍-----d校区
    path('introduction/', introduction),

# 地图展示
    path('locations/',locations),
#预约须知
    path('notice/', notice)
]
urlpatterns += staticfiles_urlpatterns()
