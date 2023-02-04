node="ubuntu@xxx.xxx.60.162"
ssh -i ~/.ssh/ssh-key-2023-01-04.key $node '. ~/.profile; cd ~/projects/prayerapp; remotesecret=./git_pwd; GIT_ASKPASS=$remotesecret git pull; git reset --hard origin/master'
printf "\033[0;31m git pull is done @remote $node \033[0m\n\n"