# Generated by Django 4.1.7 on 2023-04-23 09:45

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_finplan360', '0010_alter_useraccount_acc_creation_date'),
    ]

    operations = [
        migrations.CreateModel(
            name='usersalary',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=1024, unique=True)),
                ('salary', models.IntegerField(default=0)),
            ],
        ),
        migrations.AlterField(
            model_name='useraccount',
            name='acc_creation_date',
            field=models.DateTimeField(blank=None, default=datetime.datetime(2023, 4, 23, 15, 15, 21, 81194), null=None),
        ),
    ]
