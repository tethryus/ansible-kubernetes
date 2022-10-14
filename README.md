# Ansible - Kubernetes setup playbook

This playbook installs and configures Kubernetes with GPU support.

# Prerequisites

You should have [Ansible](https://github.com/ansible/ansible) installed on a the system that will run the playbook.

To install the prerequisites, run `ansible-galaxy install -r requirements.yml`.

# Setting up the inventory

Make a copy of the `inventories/sample` directory, and give it a representative name.
Modify the `hosts.yml` file in the inventory, and add your Kubernetes hosts.
For best results, make sure you have your public key set on the Kubernetes hosts for authentication, using `ssh-copy-id kubernetes-host`. For more info on setting up an inventory file, check out the documentation from Ansible [here](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html).

Modify the `host_vars` and `group_vars` files according to your desired setup. For a full list of available vars, check the documentation [here](docs/variables.md).

# Running the playbook

Once the inventory and variables are setup, run the playbook using `ansible-playbook playbooks/setup.yml -i inventories/<name>/hosts.yml`.
You can add `--ask-ssh-pass` / `-k` if you don't have a public ssh key setup on the kubernetes host, and `--ask-pass` / `-K` if running with a non-root user.

The playbook also supports ansible tags, which can be used to run parts of the playbook only. 
The current available tags are:
- `common` - runs only the common setup part of the playbook on all hosts
- `master` - runs only the master setup part of the playbook
- `replica` - runs only the replica(s) and worker(s) setup part of the playbook
- `gpu` - runs only the gpu worker(s) setup part of the playbook