# Generated by Django 4.1.7 on 2023-04-16 06:42

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_finplan360', '0006_alter_useraccount_acc_creation_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='useraccount',
            name='is_authenticated',
            field=models.CharField(default='no', max_length=3),
        ),
        migrations.AlterField(
            model_name='useraccount',
            name='acc_creation_date',
            field=models.DateTimeField(blank=None, default=datetime.datetime(2023, 4, 16, 12, 12, 35, 960760), null=None),
        ),
    ]