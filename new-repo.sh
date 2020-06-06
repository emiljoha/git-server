REPO_NAME=$1
cd /home/git
mkdir $REPO_NAME
cd $REPO_NAME
git init --bare
chown -R git:git /home/git/$REPO_NAME
