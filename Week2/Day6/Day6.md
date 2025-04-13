# Day 6: Ansible Zero to Hero

In this session, we move from the theoretical understanding of Ansible (covered in Day 5) to practical hands-on usage.

## 🧱 Getting Started

Launch a Linux-based EC2 instance (recommended for first-timers).

Install Ansible:

Update package index: ```sudo apt update```

Install Ansible: ```sudo apt install ansible```

Ansible uses Python and pip under the hood.

## 🔗 Passwordless SSH Authentication

You need at least two servers: one Ansible controller and one or more target nodes.

Create an SSH key on the Ansible server:

```ssh-keygen```

Copy the public key to the target server:

```ssh <user-ip>```

This setup enables passwordless SSH, a prerequisite for Ansible.

## 🧪 Ad-Hoc Commands & Inventory

Create an inventory file listing the target server IPs.

Default location: ```/etc/ansible/hosts```, but you can specify custom inventory files.

### Example ad-hoc command:

```ansible -i inventory all -m shell -a "touch /tmp/devops-class"```

Modules can be searched via Ansible documentation (e.g., for file copy: copy module).

### 📁 Organizing with Groups

You can group servers (e.g., webservers, dbservers) in the inventory file.

### Run tasks for specific groups:

[webservers]

192.168.1.10

```ansible -i inventory webservers -m shell -a "touch /tmp/devops-class"```

## 📜 Ansible Playbooks

Playbooks are YAML files (start with ---) that define a series of tasks.

### Execute playbook:

```ansible-playbook nginx-playbook.yaml```

Use verbosity flags (-v, -vv, -vvv) for debugging.

## 🔁 Ansible Roles

Use roles to structure complex playbooks:

Initialize: ```ansible-galaxy init role_name```

Role directory includes:

tasks/, handlers/, files/, templates/, vars/, defaults/, meta/, README.md

Roles help manage large playbooks (e.g., Kubernetes setup with 50+ tasks).

## 📦 Real-World Usage

Example: Kubernetes setup

Use playbooks and roles to create EC2 instances and configure master/worker nodes.

Roles allow reuse, readability, and modular design.
