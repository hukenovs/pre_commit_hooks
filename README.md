# Simple project for testing pre-commit hooks

Useful python project for testing pre-commit hooks.
Don't forget to add `.pre-commit-config.yaml` to the top of source code directory.

License: GNU GPL 3.0.

## Info:

| **Title**         | Pre-commit hooks |
| -- | -- |
| **Author**        | Alexander Kapitanov     |
| **Project lang**  | Python                  |
| **Libraries**     | Numpy, Matplotlib       |
| **First Release** | 10 Apr 2020             |

## Description

Use the following steps for testing some pre-commit hooks:

**Example 1**:
- Save `src/example.sh` file
- Go to the source directory
- Execute: `chmod +x example.sh`
- Enjoy!

**Example 2**:
- Clone this repo
- Go to the source directory
- Execute the next commands
```bash
# Step 1: Create virtual env
virtualenv venv
source venv/bin/activate

# Step 2: Install dependences
pip install -r requirements.txt
wait

# Step 3: Apply pre-commit hooks
pre-commit install
pre-commit run --all-files
```
- Enjoy!

Also you can change any part of source code (e.g. break the rules of *PEP8* into the *main.py* file) and re-run hooks with the following command: `pre-commit run -a`

For more information about **pre-commit hooks** go to the [next link](https://pre-commit.com/ "Pre-commit hooks").
