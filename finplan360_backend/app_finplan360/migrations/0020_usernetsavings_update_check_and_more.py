# Generated by Django 4.1.7 on 2023-04-30 17:48

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_finplan360', '0019_alter_useraccount_acc_creation_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='usernetsavings',
            name='update_check',
            field=models.IntegerField(default=0, null=True),
        ),
        migrations.AlterField(
            model_name='useraccount',
            name='acc_creation_date',
            field=models.DateTimeField(blank=None, default=datetime.datetime(2023, 4, 30, 23, 18, 23, 460565), null=None),
        ),
    ]
