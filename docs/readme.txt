mkdir prayerapp 
cd prayerapp
python -m venv ./.env39 --prompt=env39
. ./.env39/bin/activate
pip install django
python -m pip install --upgrade pip
django-admin startproject project .

mkdir static; mkdir site_static;mkdir media;mkdir logs; mkdir deploy;

mkdir -p apps/map;mkdir -p apps/web;mkdir -p apps/api;

django-admin startapp web apps/web (python manage.py startapp xxxx not work)
django-admin startapp api apps/api
django-admin startapp map apps/map 

 git remote add origin https://github.com/guomx69/PrayerApp.git
 git add . ; git commit -m 'saving'; git push origin master

 git checkout -b dev

 #change from master to main
 git branch --move master main.
 git push --set-upstream origin main.
 git branch --all
 git push origin --delete master.

 #local remotes/master still exist in the ocal
 understand that there is a difference between a remote branch, and a branch that exists in 
 a remote repository. Remote branches are local branches that map to branches of the remote repository
 git fetch --prune