from django.contrib import admin
from .models import useraccount, usersalary, user_messages, usernetsavings, user_message_deletecheck

admin.site.register(useraccount)
admin.site.register(usersalary)
admin.site.register(user_messages)
admin.site.register(usernetsavings)
admin.site.register(user_message_deletecheck)
