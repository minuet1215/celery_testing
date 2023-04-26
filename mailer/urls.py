from django.urls import path

from mailer.views import ReviewEmailView

urlpatterns = [path("", ReviewEmailView.as_view(), name="reviews")]
