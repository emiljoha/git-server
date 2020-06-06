REPO_NAME=$1
mkdir $REPO_NAME
chown -R git:git $REPO_NAME
cd $REPO_NAME
git init --bare
