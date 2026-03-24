#!/bin/bash
yum update -y
yum install -y python3 git

pip3 install --upgrade pip
pip3 install django

cd /home/ec2-user
git clone https://github.com/dineshsiddeshwar/BayerDjango.git BayerProject

cd BayerProject

if [ -f requirements.txt ]; then
    pip3 install -r requirements.txt
fi

cat <<EOF > /etc/systemd/system/django.service
[Unit]
Description=Django App
After=network.target

[Service]
User=ec2-user
WorkingDirectory=/home/ec2-user/BayerProject/BayerProject
ExecStart=/usr/bin/python3 manage.py runserver 0.0.0.0:8000
Restart=always

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reexec
systemctl enable django
systemctl start django