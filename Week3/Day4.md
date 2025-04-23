# 📦 Day 4: Introduction to Containers

Welcome to Day 4 of the Complete DevOps Course. In this session, we cover a foundational topic in modern DevOps: Containers.

## 🧠 What You'll Learn

Introduction to Containers: Understand what containers are and why they matter in DevOps.

## 🖥️ Virtual Machines Recap

-Physical servers often underutilize resources (CPU, RAM).

-Hypervisors enable multiple VMs on one physical server using virtualization.

-Each VM has its own OS and provides strong isolation.

-Virtualization reduces cost and increases utilization but still results in some resource waste.

## 📉 Limitations of VMs

-Even with virtualization, VMs often waste resources.

-Example: EC2 instances rarely use full allocated capacity.

-Organizations running thousands of VMs face significant cost inefficiencies.

## 🚀 Why Containers?

-Containers address the inefficiencies of VMs.

-They offer a lightweight solution without full OS per instance.

-Share host OS resources while providing logical isolation.

-Faster, more efficient, and smaller (often 100–500 MB).

## 🛠️ Container Architecture

Model 1: Containers on physical servers.

Model 2: Containers on VMs (preferred due to reduced maintenance via cloud providers).

Tools like Docker allow containers to run on either setup.

Model 2 is more popular due to cloud adoption and lower maintenance overhead.

## ⚙️ How Containers Work

-Use host OS libraries and dependencies.

-Applications are bundled with only necessary components.

-Very lightweight due to minimal OS and shared dependencies.

## 🐳 Docker: The Container Powerhouse

-Simplifies container lifecycle: Dockerfile → Image → Container

-Uses Docker Engine to build and run containers.

-User-friendly interface and commands to manage containerization.

## 🔧 Lifecycle of a Docker Container

-Write a Dockerfile.

-Build an Image.

-Run the Image to create a Container.

## 🛡️ Drawbacks & Evolving Tools

-Docker containers have a Single Point of Failure (SPOF): Docker Engine.

-If Docker Engine crashes, all containers become unresponsive.
