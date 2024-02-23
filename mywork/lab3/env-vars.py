#!/c/Users/yuina/AppData/Local/Microsoft/WindowsApps/python3

import os

UVA_MAJOR = input('What is your major at UVA? ')
os.environ["UVA_MAJOR"] = UVA_MAJOR

FAV_STUDY_LOCATION = input('Where is your favorite place to study on grounds? ')
os.environ["FAV_STUDY_LOCATION"] = FAV_STUDY_LOCATION

FAV_COLOR = input('What is your favorite color? ')
os.environ["FAV_COLOR"] = FAV_COLOR

print(os.getenv("UVA_MAJOR"))
print(os.getenv("FAV_STUDY_LOCATION"))
print(os.getenv("FAV_COLOR"))
