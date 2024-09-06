# Docker and Docker Compose Installation Script

This script automates the installation of **Docker** and **Docker Compose** on Ubuntu-based systems. It also adds the current user to the `docker` group and verifies the installation.

## Requirements

- **Ubuntu** or Ubuntu-based system.
- `sudo` privileges are required for the installation commands.

## Usage

### Step 1: Clone the Repository

Clone the repository from GitHub:

```bash
git clone https://github.com/densm/install-docker-and-compose.git
cd install-docker-and-compose
```

### Step 2: Make the Script Executable

Make the script executable:

```bash
chmod +x install-docker-and-compose.sh
```

### Step 3: Run the Script

Execute the script:

```bash
./install-docker-and-compose.sh
```

### Step 4: Apply Group Changes

Log out and log back in for the group changes to take effect.
