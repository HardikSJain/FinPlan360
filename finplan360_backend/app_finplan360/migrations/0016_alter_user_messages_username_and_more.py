# Generated by Django 4.1.7 on 2023-04-26 16:46

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_finplan360', '0015_alter_user_messages_category_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user_messages',
            name='username',
            field=models.CharField(max_length=1024),
        ),
        migrations.AlterField(
            model_name='useraccount',
            name='acc_creation_date',
            field=models.DateTimeField(blank=None, default=datetime.datetime(2023, 4, 26, 22, 16, 17, 170262), null=None),
        ),
    ]
