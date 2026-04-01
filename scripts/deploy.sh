#!/bin/bash

ssh -o StrictHostKeyChecking=no ubuntu@13.233.98.185 << 'EOF'

cd devops-django-cicd-project || git clone https://github.com/Dharshana-S30/devops-django-cicd-project.git

cd devops-django-cicd-project/django-app/django-locallibrary-tutorial

git pull origin main

pip3 install -r requirements.txt

python3 manage.py migrate

pkill -f runserver || true

nohup python3 manage.py runserver 0.0.0.0:8000 > output.log 2>&1 &

EOF
