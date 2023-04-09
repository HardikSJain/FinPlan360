from django.db import models


class useraccount(models.Model):
    fullname = models.CharField(null=False, default="", max_length=1024)
    dob = models.DateField(null=False, default="")
    username = models.CharField(null=False, unique=True, max_length=1024)
    password = models.CharField(null=False, default="", max_length=1024)

    def __str__(self):
        return self.fullname
