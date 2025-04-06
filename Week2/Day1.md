# Shell Scripting & Linux Interview Questions for DevOps Engineers

A collection of frequently asked shell scripting and Linux interview questions with clear and concise answers. Ideal for DevOps engineers preparing for interviews.

## Q&A Summary

### Q1: What are the most commonly used Linux commands in day-to-day DevOps tasks?
**A:**
- `mkdir`, `touch`, `vim`, `grep`, `ps`, `awk`, `curl`
- Avoid listing commands like `netcat`, `traceroute` unless asked for debugging tools.

---

### Q2: How to list all running processes using a shell script?
**A:**
```bash
ps -ef
```
To extract only process IDs:
```bash
ps -ef | awk '{print $2}'
```

---

### Q3: How to retrieve specific lines or error messages from a remote file?
**A:**
Use `curl` and `grep`:
```bash
curl <url> | grep 'ERROR'
```

---

### Q4: Write a shell script to print numbers divisible by 3 or 5 but not by 15 (from 1 to 100).
**A:**
```bash
#!/bin/bash
for i in {1..100}
do
  if [[ ( $(($i % 3)) -eq 0 || $(($i % 5)) -eq 0 ) && $(($i % 15)) -ne 0 ]]; then
    echo $i
  fi
done
```

---

### Q5: How to count the occurrences of a specific character in a string using Bash?
**A:**
```bash
x="mississippi"
echo "$x" | grep -o 's' | wc -l
```

---

### Q6: How to count the number of lines in a file?
**A:**
```bash
cat filename.txt | wc -l
```

---

### Q7: How do you debug a shell script?
**A:**
Use:
```bash
set -x
```
To stop debugging:
```bash
set +x
```

---

### Q8: How to schedule a shell script to run automatically every day?
**A:**
Use `crontab`:
```bash
crontab -e
```
Add the following line to run the script at 6 PM every day:
```bash
0 18 * * * /path/to/script.sh
```

---

### Q9: What is the difference between soft and hard links in Linux?
**A:**
- **Hard Link:** Direct pointer to the inode; file continues to exist even if the original is deleted.
- **Soft Link (Symlink):** Pointer to the filename; breaks if the original is deleted.

---

### Q10: Difference between `break` and `continue` statements in shell scripting?
**A:**
- **`break`:** Exits the loop immediately.
- **`continue`:** Skips current iteration and moves to the next.

---

### Q11: What are some real-time challenges of using shell scripting?
**A:**
- Not statically typed (no strict type checking)
- Minimal error handling
- Performance issues with large datasets

---

### Q12: What are the different types of loops in shell scripting?
**A:**
- `for`, `while`, and `until`
- Each has unique use-cases based on conditions and iterations

---

### Q13: How to troubleshoot network issues using shell commands?
**A:**
Use commands like:
```bash
traceroute google.com
tracepath google.com
```
To check hops and network path

---

### Q14: How to sort the contents of a file?
**A:**
```bash
sort filename.txt
```

---

### Q15: How to manage huge log files generated daily?
**A:**
Use `logrotate`:
- Rotate, compress, and delete logs based on policies
- Configure `/etc/logrotate.d/` for specific apps
