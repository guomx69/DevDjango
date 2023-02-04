!/bin/bash

#ssh -i ~/.ssh/ssh-key-2023-01-04.key ubuntu@xxxx.111.1111.111
#scp  -i ~/.ssh/ssh-key-2023-01-04.key oracle.sh ubuntu@xxxx.111.1111.111:~/oracle.sh
 
#install git and ufw 
 sudo apt update && sudo apt -y upgrade && sudo apt install -y git && sudo apt install -y ufw &&\

 sudo ufw status && sudo ufw enable &&  sudo ufw app list &&\
 sudo ufw allow ssh && sudo ufw allow http && sudo ufw allow https && sudo systemctl status ufw.service &&\
#nginx
 domainConf=memaptech.com.conf
 sudo apt -y install nginx
 sudo apt -y install certbot python3-certbot-nginx #ssl
 systemctl status nginx
 scp -i ~/.ssh/ssh-key-2023-01-04.key oraclenginx.conf  ubuntu@xxxx.111.1111.111:/etc/nginx/conf.d/$domainConf
 sudo nginx -t
 sudo systemctl restart nginx
#python
 sudo add-apt-repository -y ppa:deadsnakes/ppa
 sudo apt update -y 
 sudo apt install -y python3.9
 sudo ln -sf /usr/bin/python3.9 /usr/bin/python3
 sudo apt install python3.9-venv
#check in the code
echo "export GITHUBPWD=xxxxxxxxxxxxxxx" >> ~/.profile  #manually do it 
source ~/.profile
 SOURCECODE="https://guomx69:$GITHUBPWD@github.com/guomx69/PrayerApp.git"
 sudo mkdir -p projects
 cd ~/projects
 git clone --branch master $SOURCECODE
 cd So* && 
 python3 -m venv ./.env39 --prompt=env39
 . ./.env39/bin/activate
#Environment variable
 echo 'echo $GITHUBPWD' > ./git_pwd




#####################the above need to run automatically. the following need to run and check it####################################
#scp  -i ~/projects/upworks/PrayerApp/palavah/.env  ubuntu@xxxx.111.1111.111:~/projects/upworks/PrayerApp/palavah/.env

#pip3 install -r requirements
##remove the following items from requirements for there is the problem when running pip3 install -r requirements
##mysqlclient==2.1.0 &&  psycopg2==2.9.3

######fix bugs when running python manage.py runserver
#pip3 install Django-dotenv     #for read_dotenv
#apt-get update && apt-get install -y --no-install-recommends libgl1 libglib2.0-0

###########manual setup#####################
## setup VCN(check if posssible run script)->Security List -> Ingress Rules
## sudo certbot --nginx -d topchinafood.com -d www.topchinafood.com
###  mv /var/www/html/index*.html  /var/www/html/index.html

#locally run the following code and update the cloud server code
#scp  -i ~/.ssh/ssh-key-2023-01-04.key git_pull.sh ubuntu@xxxx.111.1111.111:~/projects/PrayerApp/git_pull.sh
# ssh -i ~/.ssh/ssh-key-2023-01-04.key ubuntu@xxxx.111.1111.111 '. ~/.profile; cd ~/projects/PrayerApp; remotesecret=./git_pwd; GIT_ASKPASS=$remotesecret git pull; git reset --hard origin/master'