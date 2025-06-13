from django.db import models
from products.models import Product
from retailers.models import Retailer

class Price(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='prices')
    retailer = models.ForeignKey(Retailer, on_delete=models.CASCADE, related_name='prices')
    amount = models.DecimalField(max_digits=10, decimal_places=2)  # Price in Botswana Pula (BWP)
    last_updated = models.DateTimeField(auto_now=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.product} at {self.retailer} - BWP {self.amount}"

    class Meta:
        unique_together = ('product', 'retailer')
        ordering = ['amount']
