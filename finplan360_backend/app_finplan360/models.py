from datetime import datetime
from django.db import models


class useraccount(models.Model):
    firstname = models.CharField(null=False, default="", max_length=1024)
    lastname = models.CharField(null=False, default="", max_length=1024)
    dob = models.DateField(null=False, default="")
    username = models.CharField(null=False, unique=True, max_length=1024)
    password = models.CharField(null=False, default="", max_length=1024)
    panoraadhar = models.CharField(null=False, default="", max_length=12)
    acc_creation_date = models.DateTimeField(
        default=datetime.now(), blank=None, null=None)
    is_authenticated = models.CharField(null=False, default="no", max_length=3)

    def __str__(self):
        return self.firstname + " " + self.lastname


class usersalary(models.Model):
    username = models.CharField(null=False, unique=True, max_length=1024)
    salary = models.IntegerField(null=False, default=0)

    def __str__(self):
        return self.username
