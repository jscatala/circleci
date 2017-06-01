#!/bin/bash
cp ~/Assets/screenrc ~/.screenrc
mkdir $HOME/.venvs
virtualenv $HOME/.venvs/CODE_DEPLOY_EX
cd $HOME/.venvs/CODE_DEPLOY_EX
./bin/pip uninstall -y appdirs
./bin/pip install setuptools
./bin/pip install -r ~/Assets/requirements.txt

sudo cp /home/ubuntu/Assets/gunicorn.conf /etc/systemd/system/example.service
sudo systemctl start example 
sudo systemctl enable example

sudo apt-get install nginx -y
sudo ln -s /home/ubuntu/Assets/example_nginx.conf /etc/nginx/sites-enabled
sudo nginx -t
sudo systemctl restart nginx

date > $HOME/install_executed.txt
