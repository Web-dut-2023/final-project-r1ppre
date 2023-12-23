from django.contrib import admin
from .models import dmin, Department, UserInfo, Task, Departmentpanhe,Order,Orderpanhe
from import_export import resources
from import_export.admin import ImportExportModelAdmin

from .views import order


class dminResource(resources.ModelResource):
    class Meta:
        model = dmin
class dminAdmin(ImportExportModelAdmin):
    #显示定义的字段
    list_display = ['id','username','password']
    list_per_page = 20
    actions_on_top = False
    actions_on_bottom = True
    search_fields =['id','name']


class DepartmentResource(resources.ModelResource):
    class Meta:
        model = dmin
class DepartmentAdmin(ImportExportModelAdmin):
    #显示定义的字段
    list_display = ['id','title']
    list_per_page = 20
    actions_on_top = False
    actions_on_bottom = True
    search_fields =['id','title']
class DepartmentpanheAdmin(ImportExportModelAdmin):
    #显示定义的字段
    list_display = ['id','title']
    list_per_page = 20
    actions_on_top = False
    actions_on_bottom = True
    search_fields =['id','title']



class UserInfosource(resources.ModelResource):
    class Meta:
        model = dmin
#无1
class UserInfoAdmin(ImportExportModelAdmin):
    #显示定义的字段
    list_display = ['id','name','age','account','depart','gender','create_time']
    list_per_page = 20
    actions_on_top = False
    actions_on_bottom = True
    search_fields =['id','name','age','account','depart','gender','create_time']

class PrettyNumsource(resources.ModelResource):
    class Meta:
        model = dmin
#无3
class PrettyNumAdmin(ImportExportModelAdmin):
    #显示定义的字段
    list_display = ['id','mobile','price','level','status']
    list_per_page = 20
    actions_on_top = False
    actions_on_bottom = True
    search_fields =['id','mobile','price','level','status']


class Tasksource(resources.ModelResource):
    class Meta:
        model = dmin
class TaskAdmin(ImportExportModelAdmin):
    #显示定义的字段
    list_display = ['id','level','title','user']
    list_per_page = 20
    actions_on_top = False
    actions_on_bottom = True
    search_fields =['id','level','title','user']

class Ordersource(resources.ModelResource):
    class Meta:
        model = Order
class OrderAdmin(ImportExportModelAdmin):
    """ 订单 """
    list_display = ['oid', 'title','price','endtime']
    list_per_page = 20
    actions_on_top = False
    actions_on_bottom = True
    search_fields = ['oid', 'title','price','endtime']
class OrderAdminpanhe(ImportExportModelAdmin):
    """ 订单 """
    list_display = ['oid', 'title','price','endtime']
    list_per_page = 20
    actions_on_top = False
    actions_on_bottom = True
    search_fields = ['oid', 'title','price','endtime']




admin.site.site_header = 'R1PPRE场馆预约管理系统'  # 设置header
admin.site.site_title = 'R1PPRE场馆预约管理系统'  # 设置title
admin.site.index_title = 'R1PPRE场馆预约管理系统'