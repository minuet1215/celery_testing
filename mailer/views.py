from django.http import HttpResponse
from django.views.generic import FormView

from mailer.forms import ReviewForm


class ReviewEmailView(FormView):
    template_name = "review.html"
    form_class = ReviewForm

    def form_valid(self, form):
        form.send_email()
        msg = "Thanks for the review!"
        return HttpResponse(msg)
