# SSH
SSH_DIR=~/.ssh
SSH_CONFIG=$SSH_DIR/config

mkdir -p $SSH_DIR
touch $SSH_CONFIG

# For external hosts (GitHub, GitLab)
EXTERNAL_HOST_DIR=~/.ssh/external_host
mkdir -p $EXTERNAL_HOST_DIR

GITHUB_KEY=$EXTERNAL_HOST_DIR/github
ssh-keygen -t rsa -f $GITHUB_KEY
printf "Host github.com\n    Hostname github.com\n    IdentityFile $GITHUB_KEY\n    User git\n" >> $SSH_CONFIG

GITLAB_KEY=$EXTERNAL_HOST_DIR/gitlab
ssh-keygen -t rsa -f $GITLAB_KEY
printf "Host gitlab.com\n    Hostname gitlab.com\n    IdentityFile $GITLAB_KEY\n    User git\n" >> $SSH_CONFIG
