# Generated by Django 4.1.7 on 2023-04-30 16:23

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_finplan360', '0017_alter_useraccount_acc_creation_date'),
    ]

    operations = [
        migrations.CreateModel(
            name='usernetsavings',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=1024)),
                ('netsavings', models.FloatField(default=0, null=True)),
            ],
        ),
        migrations.AlterField(
            model_name='useraccount',
            name='acc_creation_date',
            field=models.DateTimeField(blank=None, default=datetime.datetime(2023, 4, 30, 21, 53, 17, 559190), null=None),
        ),
    ]
