# Day 5: Configuration Management with Ansible

In this session, we delve deep into configuration management with Ansible, comparing it with Puppet and exploring real-world use cases.

## 🧩 What is Configuration Management?

A fundamental DevOps practice for managing server and infrastructure configurations.

Essential due to rapid scaling of cloud infrastructure and increased number of servers.

### Challenges addressed:

Managing thousands of servers

OS distribution inconsistencies (Ubuntu, CentOS, Alpine)

Scripting limitations across environments (Shell, PowerShell)

## 🧪 Evolution of Tools

Initial reliance on scripts: shell scripts for Linux, PowerShell for Windows.

### Emergence of tools:

Puppet

Chef

SaltStack

Ansible (most widely adopted today)

## 🚀 Why Ansible is Preferred

Developed and maintained by Red Hat.

Agentless architecture — no need to install agents on target machines.

### Push model (vs Puppet’s pull model):

Easier management from a central node (your laptop or control node)

Supports dynamic inventory: automatically detects new servers in cloud environments.

Simple, human-readable YAML syntax for playbooks.

Strong support for both Linux and Windows post-Red Hat acquisition.

## 🆚 Ansible vs Puppet

| Feature               | Ansible                      | Puppet                        |
|-----------------------|------------------------------|-------------------------------|
| Architecture          | Agentless                    | Master-Agent (requires setup) |
| Communication         | SSH/WinRM                    | Requires certificates/tokens  |
| Language              | YAML                         | Puppet DSL                    |
| Windows Support       | Strong with Red Hat modules  | Limited                       |
| Learning Curve        | Easier (familiar syntax)     | Steeper (custom language)     |
| Community Modules     | Ansible Galaxy               | Puppet Forge                  |
| Debugging             | Needs improvement            | Better debugging logs         |
| Performance           | Can degrade at large scale   | Generally stable              |

## 📦 Ansible Galaxy

Repository of reusable Ansible roles/modules.

Share and use modules across organizations.

Supports building custom modules for applications like F5 Load Balancer, Nginx, etc.

## ❌ Disadvantages of Ansible

Windows management can still be tricky.

Debugging is not as user-friendly.

Performance issues when managing very large infrastructures.

## 💼 Interview Questions Covered

What is Configuration Management?

Push vs Pull Mechanism — Which model does Ansible use?

Agentless vs Agent-based tools.

Does Ansible support both Linux and Windows? (Yes)

Cloud Provider Compatibility — Does Ansible work across AWS, Azure, GCP? (Yes, IP/SSH/WinRM access matters, not the provider)

Does Ansible use a specific language? (Uses YAML for playbooks)
