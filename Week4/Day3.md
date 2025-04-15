# 📘 Day 3: GitHub Actions vs Jenkins

This session explores GitHub Actions and compares it with Jenkins, highlighting real-world CI/CD implementations.

## GitHub Actions

GitHub Actions is GitHub’s native CI/CD tool, offering tight integration and easier automation within GitHub projects.

## 🔍 GitHub Actions Overview

-A platform-specific CI/CD tool (like GitLab CI is to GitLab).

-Ideal if you plan to stay within GitHub. Not recommended for cross-platform needs (e.g., migrating to GitLab, AWS CodeCommit, Azure DevOps).

-Lightweight and plugin-free setup compared to Jenkins.

## 🛠️ Getting Started

-Create a ```.github/workflows/``` directory in your repo.

-Add ```.yml``` files defining workflows triggered by events like push, pull_request, etc.

-Multiple workflows are supported; each can run different checks (e.g., PR title validation, CI build, linting, security checks).

## ⚙️ Sample Python Workflow

-Added an Python unit test for an addition function.

-Triggered on push event.

## 🧱 Workflow Structure

-Written in YAML.

-Define name, on triggers, jobs, runs-on, steps.

-Use official plugins from GitHub Marketplace.

-Jobs can be matrixed (e.g., test against multiple Python versions).

## 🔐 Secrets & Customization

-GitHub Actions allows storing secrets securely under repo settings.

-Custom self-hosted runners can be configured for advanced use cases.

## ✅ Pros of GitHub Actions

-Zero maintenance (no hosting, no updates needed).

-Integrated secrets management.

-Free for public/open-source projects.

-Plugin auto-installation from GitHub Marketplace.

-Easy YAML-based configuration with minimal code.

## ⚠️ Cons of GitHub Actions

-Limited plugin ecosystem compared to Jenkins.

-Strongly tied to GitHub platform – migration to other platforms is difficult.

## 📝 Final Thoughts

GitHub Actions is a great tool for open-source projects and GitHub-centric workflows. If your org stays on GitHub, it's a fantastic alternative to Jenkins. However, if platform flexibility is important, consider other tools.
