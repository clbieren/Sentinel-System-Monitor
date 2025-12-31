# 🛡️ Sentinel - System Health Monitor

![Docker](https://img.shields.io/badge/Docker-Available-blue?logo=docker)
![Linux](https://img.shields.io/badge/Linux-Alpine-green?logo=linux)
![Bash](https://img.shields.io/badge/Language-Bash-lightgrey?logo=gnu-bash)

**Sentinel** is a lightweight, containerized system monitoring tool designed for DevOps engineers. It monitors critical system resources (Disk, CPU, RAM) in real-time and logs potential failures, ensuring high availability and reliability for servers.

This project demonstrates the implementation of **Infrastructure as Code (IaC)** principles using Docker and Bash scripting.

## 🚀 Key Features

- **Resource Monitoring:** Automatically checks disk usage percentages against safety thresholds.
- **Alert Logging:** Critical events are logged with precise timestamps for audit trails.
- **Containerized Architecture:** Fully packaged with Docker, ensuring "write once, run anywhere" capability.
- **Minimal Footprint:** Built on top of **Alpine Linux**, keeping the image size under 10MB.
- **Clean Code:** Written in modular Bash script following industry standards.

## 🛠️ Technology Stack

- **OS:** Alpine Linux (inside container)
- **Scripting:** Bash (Shell Scripting)
- **Virtualization:** Docker Engine
- **Version Control:** Git

## ⚙️ Installation & Usage

You can run Sentinel using Docker (recommended) or directly on a Linux/WSL machine.

### Method 1: Docker (Recommended)

1. **Build the Image**
   ```bash
   docker build -t sentinel-app .
   ```

2. **Run the Container**
   ```bash
   docker run sentinel-app
   ```

### Method 2: Local Execution (Linux/WSL)

1. **Grant Permissions**
   ```bash
   chmod +x sentinel.sh
   ```

2. **Run Script**
   ```bash
   ./sentinel.sh
   ```

## 📂 Project Structure

```text
.
├── Dockerfile       # Instructions to build the Docker image
├── sentinel.sh      # Core logic script for monitoring
├── README.md        # Documentation
└── sentinel.log     # (Auto-generated) Log file for alerts
```

## 👨‍💻 Author

Developed as a DevOps practice project. Open for contributions and improvements.
