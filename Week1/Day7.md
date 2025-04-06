# **Day -7 | Shell Scripting for DevOps - Part 2 🚀**

## **🔧 Prerequisites**

Basic understanding of shell scripting (covered in Part 1)

A working Linux environment (preferably EC2 Amazon Linux instance or any cloud-hosted VM)

### **🧠 Recap from Part 1**

Writing simple scripts to create files and folders

Using key system analysis commands:

-```df``` – Check disk space

-```free``` – Check memory usage

-```nproc``` – Check CPU count

-```top``` – Monitor running processes

## 🛠️ What You’ll Learn in Part 2

### ✅ Node Health Script (node_health.sh)

Build a custom shell script to monitor node health

Use in troubleshooting: clone from GitHub and run to diagnose system issues

Include version metadata in scripts for better tracking

### 🧪 Best Practices & Debugging

-Use ```echo``` and ```set -x``` together for better script visibility

-```set -e```, ```set -o pipefail```, and ```set -exo pipefail``` for safe execution

### 🔍 Process & Resource Monitoring

-```ps -ef``` to list running processes

-Use ```grep``` to filter relevant processes

-Combine with pipe (|) for powerful data parsing

-```awk``` for extracting specific columns in command output

### 📁 File & Log Handling

-Use ```cat```, ```grep```, ```awk```, and pipes to extract error logs from files

-Use ```curl``` to fetch remote files (like logs from GitHub)

#### Difference between curl and wget:

curl: Flexible, supports APIs, streams data

wget: Simpler, primarily used for downloading files

### 🔍 File Search

-```find``` command to search files/folders system-wide

Example: ```find / -name somefile``` for root-level search

### 👤 User Management

-Use ```sudo su -``` or ```sudo su``` to switch to root

### 🔁 Shell Loops & Conditions

if, if-else, and for loops in shell scripts

Practical use: Print numbers, compare values, loop through tasks

### ⚠️ Signal Handling

-Introduction to Linux signals

-```trap``` command to handle events like Ctrl+C (SIGINT)

Syntax: ```trap 'echo Message' SIGNAL```

Use cases: Graceful shutdowns, safe exits in scripts

