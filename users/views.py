from django.contrib import messages
from django.contrib.auth import authenticate, login
from django.contrib.auth.forms import UserCreationForm
from django.shortcuts import render, redirect

from users.forms import CreateUserForm


def login_page(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)
            print('LOGIN SUCCESS.')
            return redirect('docs:home')
        else:
            messages.info(request, 'Username or password is incorrect!')

    print('LOGIN FAILED')
    return render(request, 'users/login.html')


def register_page(request):
    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            user = form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, 'Account created for: "' + username + '"')
            print('>>> FORM SAVED!')
            return redirect('login')
    else:
        form = CreateUserForm()

    context = {'form': form}
    print('>>> FORM NOT SAVED!')
    return render(request, 'users/register.html', context)
