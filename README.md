# Website-Monitoring-using-Bash-Script
A Bash-based website monitoring solution that performs HTTP health checks using curl, validates status codes, measures response latency, and logs alerts for downtime or performance degradation. Designed to simulate real-world DevOps monitoring fundamentals.
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
