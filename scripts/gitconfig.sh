#!/bin/sh

GITCONFIG="$HOME"/.gitconfig

[ -e "$GITCONFIG" ] || touch "$GITCONFIG"

USER_NAME=$(git config --file "$GITCONFIG" user.name)
if [ -z "$USER_NAME" ]; then
  echo "Enter full name: "
  read -r USER_NAME
  git config --file="$GITCONFIG" user.name "$USER_NAME"
else
  echo "user.name=$USER_NAME"
fi

USER_EMAIL=$(git config --file "$GITCONFIG" user.email)
if [ -z "$USER_EMAIL" ]; then
  echo "Enter email:"
  read -r USER_EMAIL
  git config --file="$GITCONFIG" user.email "$USER_EMAIL"
else
  echo "user.email=$USER_EMAIL"
fi

# GITHUB_USERNAME=$(git config --file "$GITCONFIG_USER" github.user)
# if [ -z "$GITHUB_USERNAME" ]; then
#   echo "Enter GitHub username:"
#   read -r GITHUB_USERNAME
#   git config --file "$GITCONFIG" github.user "$GITHUB_USERNAME"
# else
#   echo "github.user=$GITHUB_USERNAME"
# fi

# color
git config --file "$GITCONFIG" color.ui "auto"

# color "status"
git config --file "$GITCONFIG" color.status.added "yellow"
git config --file "$GITCONFIG" color.status.changed "green"
git config --file "$GITCONFIG" color.status.untracked "red"

# color "diff"
git config --file "$GITCONFIG" color.diff.meta "yellow bold"
git config --file "$GITCONFIG" color.diff.frag "magenta bold"
git config --file "$GITCONFIG" color.diff.old "red bold"
git config --file "$GITCONFIG" color.diff.new "green bold"
