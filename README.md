# jfrulla-ansible-example
Example of an ansible repo, right now just to serve as a foundation to build more roles off of.

## Installation
Cd'ing to the repo directory and running the following command will ensure that the UV python package manager is installed, and it will build the python virtual environment needed to run these playbooks:

```bash
make install
```

## Loading the Python environment
Before running playbooks, you'll need to load the python venv with:

```bash
source .venv/bin/activate
```

## Running playbooks
To run the example playbook on the example system, simply run:

```bash
ansible-playbook ./playbooks/deploy.yml
```

Please note that variable values will probably need to be alterred, the inventory/hosts.yml file will need to be adjusted, and the template will probably need to be edited for things to work.