# 🌐 Website Monitoring & Alerting using Bash

A lightweight website monitoring solution built using **Linux Bash scripting**.  
This script continuously checks website availability, validates HTTP status codes, measures response time, and logs alerts — simulating real-world DevOps monitoring behavior.

---

## 🚀 Project Overview

This project monitors one or more websites and helps answer:
- Is the website **UP or DOWN**?
- Is the **HTTP status code valid (200)**?
- Is the website **responding slowly**?
- Should an **alert be triggered**?

The solution is similar to basic monitoring tools such as uptime checks before integrating advanced observability stacks.

---

## 🧩 Features

✔ Website availability monitoring  
✔ HTTP status code validation  
✔ Response time threshold checking  
✔ Alert generation for failures  
✔ Log-based monitoring  
✔ Handles unreachable websites gracefully  
✔ ShellCheck-compliant Bash code  

---

## 🛠️ Tech Stack

- **Linux**
- **Bash Scripting**
- **curl** (HTTP health checks)
- **bc** (floating-point comparison)
- **cron (optional)** for scheduling

---

## 📂 Project Structure

website-monitor/
├── monitor.sh # Main monitoring script
├── url.txt # List of websites to monitor
├── logs/
│ └── monitor.log # Monitoring logs
└── README.md
![website-monitoring-architecture png](https://github.com/user-attachments/assets/7a5dddac-c391-46f8-ac94-6d286ce5ab7b)

## ⚙️ How It Works

1. Reads website URLs from `url.txt`
2. Sends HTTP requests using `curl`
3. Captures:
   - HTTP status code
   - Response time
4. Evaluates conditions:
   - Status ≠ 200 → **ALERT**
   - Response time > threshold → **ALERT**
5. Logs results into `logs/monitor.log`

<img width="1291" height="426" alt="Output" src="https://github.com/user-attachments/assets/1dabc87f-727c-4776-9cc0-83affbdc5bcf" />

