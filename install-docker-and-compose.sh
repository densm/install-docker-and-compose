# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install the Docker packages:
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo -e "\033[38;5;208m Docker has been successfully installed! 🎉 \033[0m"

# Update the package index, and install the latest version of Docker Compose:
sudo apt-get update
sudo apt-get install -y docker-compose-plugin
echo -e "\033[38;5;208m Docker Compose has been successfully installed! 🎉 \033[0m"

echo -e "\033[38;5;208m Running sudo docker run hello-world to check installation success\033[0m"
sudo docker run hello-world

echo -e "\033[38;5;208m Running sudo docker compose version to check installation success \033[0m"
sudo docker compose version

# Add current user to docker group:
sudo usermod -aG docker $(whoami)
echo -e "\033[38;5;208m $(whoami) added to docker group! 🎉\033[0m"
echo -e "\033[38;5;208m Now you can use docker without sudo but you need to log out and log in first \033[0m"
