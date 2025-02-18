from django.db import models

# Create your models here.
from django.contrib.auth.models import AbstractUser
from django.db import models

class CustomerUser(AbstractUser):
    email = models.EmailField(unique=True)
    