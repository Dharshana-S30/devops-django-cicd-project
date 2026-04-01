#!/bin/bash

ssh -o StrictHostKeyChecking=no ubuntu@13.233.98.185 << 'EOF'

if [ ! -d "devops-django-cicd-project" ]; then
  git clone https://github.com/Dharshana-S30/devops-django-cicd-project.git
fi

cd devops-django-cicd-project

git pull origin main

cd django-app/django-locallibrary-tutorial

pip3 install -r requirements.txt

python3 manage.py migrate

pkill -f runserver || true

nohup python3 manage.py runserver 0.0.0.0:8000 > output.log 2>&1 &

EOF
