# Generated by Django 4.1.7 on 2023-04-12 13:56

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_finplan360', '0003_useraccount_acc_creation_dte'),
    ]

    operations = [
        migrations.AddField(
            model_name='useraccount',
            name='panoraadhar',
            field=models.CharField(default='', max_length=12),
        ),
        migrations.AlterField(
            model_name='useraccount',
            name='acc_creation_dte',
            field=models.DateTimeField(blank=None, default=datetime.datetime(2023, 4, 12, 19, 26, 5, 163016), null=None),
        ),
    ]
