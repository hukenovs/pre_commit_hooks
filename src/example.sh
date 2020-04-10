#!/bin/bash

# ########################################################################## #
#
# Title       : example.sh
# Author      : Kapitanov Alexander
# E-mail      : ...
# Date        : 2020/04/10
#
# ########################################################################## #
#
# Description :
#   Example test for testing precommit hooks
#
# How to use:
#
#   - Download repo and move to source script
#   - Execute: chmod +x example.sh
#   - Specify REPO_NAME,
#
# ########################################################################## #

REPO_NAME="test_hooks"

# Step 0: CLone repo
pwd
git clone https://github.com/capitanov/${REPO_NAME}.git
wait

# Step 1: Create and activate virtualenv
cd ${REPO_NAME}/
virtualenv venv
source venv/bin/activate
wait

# Step 2: Install dependences
pip install -r requirements.txt
wait

# Step 3: Apply pre-commit hooks
pre-commit install
pre-commit run --all-files
git status
# git commit -m 'Test hooks with new file'
wait

# Step 4: Remove test project
# cd ..
# rm -rf ${REPO_NAME}
echo "Finish!"
