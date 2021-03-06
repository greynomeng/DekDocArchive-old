from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.core.exceptions import ValidationError


class CreateUserForm(UserCreationForm):
    class Meta:
        model = User
        # fields = '__all__'
        fields = [
            'username',
            'email',
            'password1',
            'password2',
        ]

    # def clean_username(self):
    #     username = self.cleaned_data['username'].lower()
    #     r = User.objects.filter(username=username)
    #     if r.count():
    #         raise ValidationError('Username already exists!')
    #     return username
    #
    # def clean_email(self):
    #     email = self.cleaned_data['email'].lower()
    #     r = User.objects.filter(email=email)
    #     if r.count():
    #         raise ValidationError('Email already exists!')
    #     return email
    #
    # def clean_password2(self):
    #     password1 = self.cleaned_data.get('password1')
    #     password2 = self.cleaned_data.get('password2')
    #
    #     if password1 and password2 and password1 != password2:
    #         raise ValidationError('Passwords don''t match!')
    #     return password1
    #
    # def save(self, commit=True):
    #     user = User.objects.create_user(
    #         self.cleaned_data['username'],
    #         self.cleaned_data['email'],
    #         self.cleaned_data['password1'],
    #     )
    #     return user
