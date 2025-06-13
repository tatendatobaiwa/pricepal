from django.db import models

class Retailer(models.Model):
    name = models.CharField(max_length=200, unique=True)
    address = models.TextField(blank=True)
    city = models.CharField(max_length=100, default="Gaborone")
    phone = models.CharField(max_length=20, blank=True)
    email = models.EmailField(blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['name']
