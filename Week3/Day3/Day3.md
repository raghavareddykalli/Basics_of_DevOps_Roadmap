# 🚀 Overview

In this session, we focuses on GitHub Actions using self-hosted runners. It builds upon previous projects (e.g., GitHub-hosted runners and Jenkins pipelines) and walks through configuring a self-hosted runner on an AWS EC2 instance, then running a Python CI workflow on it.

## 📌 What You'll Learn

-📖 Difference between GitHub-hosted and self-hosted runners

-🛠️ How to configure and use a self-hosted runner using an AWS EC2 instance

-🔐 When and why to prefer self-hosted runners over GitHub-hosted ones

-💡 Real-world use cases (e.g., enterprise/private repositories, security needs, custom packages)

-⚙️ Setting up proper inbound and outbound security rules for EC2

-🧪 Running a simple Python project with GitHub Actions

-🆚 Comparison of GitHub Actions vs Jenkins for different use cases

-🎯 Interview tips and questions related to GitHub Actions

## 💡 Why Use a Self-Hosted Runner?

-🔒 For private repositories with sensitive code.

-🧠 When GitHub-hosted runners don’t meet hardware/software requirements (e.g., RAM, dependencies).

-🛡️ For improved security (control over your runner’s environment).

-📈 Better performance and reliability for large-scale or custom workflows.

## 🧰 Tech Stack & Tools Used

-GitHub Actions

-AWS EC2 (Ubuntu instance)

-Python 3.8 & 3.9

-GitHub Secrets & Runner Tokens

## 🛠️ Steps to Configure a Self-Hosted Runner

-Launch an EC2 instance (Ubuntu).

-Set proper inbound/outbound rules (allow HTTP/HTTPS only).

-Connect via SSH and follow GitHub’s setup instructions.

-Run provided shell commands securely (beware of exposing your runner token).

-Switch your workflow’s runner label to self-hosted.

-Commit a change and verify execution on your own EC2 runner.

## 🔄 GitHub Actions Workflow Structure

Stored under ```.github/workflows/*.yml```

## Difference between GitHub Actions and Jenkins

-GitHub Actions excels in public/open-source projects with free runners.

-Jenkins is still a strong contender for private, complex, enterprise pipelines.


For sample python file and YAML file that contains the script refer to this github repo : https://github.com/raghavareddykalli/Github-actions

