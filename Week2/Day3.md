# 📘 Day 3: Git and GitHub 

## ✅ What is Version Control?

Version Control Systems (VCS) address two major problems:

**Code Sharing**: Allows multiple developers to work on the same project and share code effectively. In large-scale projects (like at Amazon or Flipkart), manually sharing hundreds of files is inefficient and prone to errors.

**Versioning**: Helps manage different versions of code. You can revert to earlier versions if a new change doesn’t work out.

## 🔄 Why is Git So Popular?

Before Git, tools like CVS and SVN were used. These were centralized version control systems, where a central server was the single source of truth. This meant:

-If the server went down, collaboration stopped.

-Developers had to push/pull from the same central location.

Git introduced the concept of Distributed Version Control:

-Every developer has a full copy (clone/fork) of the repository.

-Work continues even if the main server is unavailable.

## 💡 Git vs GitHub

**Git**: A distributed version control system that tracks code changes and supports collaboration.

**GitHub**: A cloud-based platform that hosts Git repositories and provides additional tools like:

-Code reviews

-Issue tracking

-Project management

-CI/CD integration

GitHub is a wrapper around Git that enhances collaboration and usability.

## 🛠️ Basic Git Workflow

Install Git: Downloadable for Linux, macOS, and Windows.

Create a file: Example - calculator.sh with some basic logic.

### Initialize a Git repository:

```git init```                     -Track changes

```git status```                   -Check current changes

```git add <file>```               -Stage file(s) for commit

```git commit -m "Your message"``` -Save version

```git log```                      -View commit history

```git diff```                     -Compare changes

```git reset --hard <commit-id>``` -Reverting to a Previous Version

## 🌐 Sharing Code via GitHub

Create an account on GitHub.

Create a new repository (public or private).

Push your local Git repository to GitHub using:

```git push -u origin main```

## GitHub makes it easier to:

-Collaborate with team members

-Manage organizations

-Track issues and pull requests


