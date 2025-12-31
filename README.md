
# 🛡️ Sentinel - System Health Monitor

![Docker](https://img.shields.io/badge/Docker-Available-blue?logo=docker)
![Linux](https://img.shields.io/badge/Linux-Alpine-green?logo=linux)
![Bash](https://img.shields.io/badge/Language-Bash-lightgrey?logo=gnu-bash)

**Sentinel** is a lightweight, containerized system monitoring tool designed for DevOps engineers. It monitors critical system resources (Disk, CPU, RAM) in real-time and logs potential failures.

## 📸 Demo In Action

Below is a screenshot of Sentinel running inside a Docker container, detecting critical disk usage on the host Windows machine via volume mounting:

![Sentinel Demo](https://github.com/clbieren/Sentinel-System-Monitor/blob/main/assets/demo.png.png?raw=true)

## 🚀 Key Features

- **Smart Path Detection:** Automatically detects if running inside Docker or on localhost.
- **Host Monitoring:** Capable of monitoring the host machine's disk usage via volume mounting.
- **Alert Logging:** Critical events are logged with precise timestamps.
- **Minimal Footprint:** Built on top of **Alpine Linux** (<10MB image size).

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

2. **Run with Host Access**
   To monitor your **real machine's** disk usage (C: drive):
   ```bash
   docker run -v /mnt/c:/host:ro sentinel-app
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








