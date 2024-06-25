import datetime

from django import template

register = template.Library()

from django.contrib.auth.models import Group

@register.filter(name='has_group')
def has_group(user, group_name):
    try:
        group = Group.objects.get(name=group_name)
    except:
        group = Group.objects.create(name=group_name)
    return True if group in user.groups.all() else False