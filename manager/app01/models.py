from django import forms
from django.db import models
from django.core.exceptions import ValidationError
from django.utils.translation import gettext_lazy as _
import datetime
from django.utils import timezone

class dmin(models.Model):
    username = models.CharField(verbose_name="用户名", max_length=32)
    password = models.CharField(verbose_name="密码", max_length=64)
    def __str__(self):
        return self.username
    class Meta:
        verbose_name_plural='登录用户管理'

class Department(models.Model):
    title = models.CharField(verbose_name='场馆名称', max_length=32)
    def __str__(self):
        return self.title
    class Meta:
        verbose_name_plural = '主校区场馆管理'

class Departmentpanhe(models.Model):
    title = models.CharField(verbose_name='场馆名称', max_length=32)
    def __str__(self):
        return self.title
    class Meta:
        verbose_name_plural = '开发区场馆管理'

class UserInfo(models.Model):
    """ 员工表 """
    name = models.CharField(verbose_name="姓名", max_length=16)
    password = models.CharField(verbose_name="密码", max_length=64)
    age = models.IntegerField(verbose_name="年龄")
    account = models.DecimalField(verbose_name="账户余额", max_digits=10, decimal_places=2, default=0)
    create_time = models.DateField(verbose_name="入职时间")
    depart = models.ForeignKey(verbose_name="部门", to="Department", to_field="id", on_delete=models.CASCADE)
    gender_choices = ((1, "男"),(2, "女"),)
    gender = models.SmallIntegerField(verbose_name="性别", choices=gender_choices)
    class Meta:
        verbose_name_plural = '普通用户管理'


class PrettyNum(models.Model):

    mobile = models.CharField(verbose_name="手机号", max_length=11)
    # 想要允许为空 null=True, blank=True
    price = models.IntegerField(verbose_name="价格", default=0)
    level_choices = ((1, "1级"),(2, "2级"),(3, "3级"),(4, "4级"),)
    level = models.SmallIntegerField(verbose_name="级别", choices=level_choices, default=1)
    status_choices = ((1, "已占用"),(2, "未使用"))
    status = models.SmallIntegerField(verbose_name="状态", choices=status_choices, default=2)
    class Meta:
        verbose_name_plural = '号码管理'


class Task(models.Model):
    """ 任务 """
    level_choices = ((1, "紧急"),(2, "重要"),(3, "临时"),)
    level = models.SmallIntegerField(verbose_name="级别", choices=level_choices, default=1)
    title = models.CharField(verbose_name="标题", max_length=64)
    detail = models.TextField(verbose_name="详细信息")
    user = models.ForeignKey(verbose_name="负责人", to="dmin", on_delete=models.CASCADE)
    class Meta:
        verbose_name_plural = '任务管理'


class CustomDateTimeInput(forms.DateTimeInput):
    def __init__(self, attrs=None, format=None):
        attrs = {'class': 'custom-datetime-input'}
        super().__init__(attrs=attrs, format=format)


class CustomDateTimeField(models.DateTimeField):
    def formfield(self, **kwargs):
        kwargs['widget'] = CustomDateTimeInput(format='%Y-%m-%d %H:%M')
        return super().formfield(**kwargs)


class Order(models.Model):
    """ 订单 """
    oid = models.CharField(verbose_name="订单号", max_length=64)
    title = models.CharField(verbose_name="预约场馆", max_length=32)
    price = CustomDateTimeField(
        verbose_name="开始时间",
        help_text="请输入有效的开始时间，例如：2023-08-26 14:00。",
    )
    endtime = CustomDateTimeField(
        verbose_name="结束时间",
        help_text="请输入开始时间后的半小时或半小时的倍数，例如：2023-08-26 14:30。",
    )

    status_choices = (
        (1, "待使用"),
        (2, "已使用"),
    )
    status = models.SmallIntegerField(verbose_name="状态", choices=status_choices, default=1)
    # admin_id
    admin = models.ForeignKey(verbose_name="用户名", to="dmin", on_delete=models.CASCADE)

    def clean(self):
        if self.price and self.endtime:
            time_difference = self.endtime - self.price
            half_hour = datetime.timedelta(minutes=30)

            if time_difference < half_hour:
                raise ValidationError(
                    _('结束时间必须在开始时间的30分钟之后。')
                )

            if (time_difference.total_seconds() % half_hour.total_seconds()) != 0:
                raise ValidationError(
                    _('结束时间必须是开始时间之后的半小时倍数。')
                )

            if self.endtime.minute not in [0, 30]:
                raise ValidationError(
                    _('结束时间的分钟部分只能是整时或者整半。')
                )

    class Meta:
        verbose_name_plural = '主校区预约记录'
class Orderpanhe(models.Model):
    """ 订单 """
    oid = models.CharField(verbose_name="订单号", max_length=64)
    title = models.CharField(verbose_name="预约场馆", max_length=32)
    price = CustomDateTimeField(
        verbose_name="开始时间",
        help_text="请输入有效的开始时间，例如：2023-08-26 14:00。",
    )
    endtime = CustomDateTimeField(
        verbose_name="结束时间",
        help_text="请输入开始时间后的半小时或半小时的倍数，例如：2023-08-26 14:30。",
    )

    status_choices = (
        (1, "待使用"),
        (2, "已使用"),
    )
    status = models.SmallIntegerField(verbose_name="状态", choices=status_choices, default=1)
    # admin_id
    admin = models.ForeignKey(verbose_name="用户名", to="dmin", on_delete=models.CASCADE)

    def clean(self):
        if self.price and self.endtime:
            time_difference = self.endtime - self.price
            half_hour = datetime.timedelta(minutes=30)

            if time_difference < half_hour:
                raise ValidationError(
                    _('结束时间必须在开始时间的30分钟之后。')
                )

            if (time_difference.total_seconds() % half_hour.total_seconds()) != 0:
                raise ValidationError(
                    _('结束时间必须是开始时间之后的半小时倍数。')
                )

            if self.endtime.minute not in [0, 30]:
                raise ValidationError(
                    _('结束时间的分钟部分只能是整时或者整半。')
                )
    class Meta:
        verbose_name_plural = '副校区预约记录'