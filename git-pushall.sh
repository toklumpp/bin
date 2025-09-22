#!/bin/bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
git remote | xargs -L1 git push --all
git remote | xargs -L1 git push --tags