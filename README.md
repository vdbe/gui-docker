# gui-docker

## Setup

### Docker

### Windows
This will use prebuild docker images created by github workflows
and hosted on docker hub

1. Install Docker desktop
  [docker-desktop](https://docs.docker.com/desktop/windows/install/)
  
  - [Enable wsl](https://docs.microsoft.com/en-us/windows/wsl/install#install-wsl-command)  
    ```powershell
    # As admin
    wsl --install
    ```
    
  - [Install docker desktop](https://docs.docker.com/desktop/windows/install/)
    Download the [docker desktop installer](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe)  
    Install it  
    reboot (not needed but recommended)
    
2. Start the website
  ```
  # In the root of this project run
  docker-compose up
  ```
  Ctrl+c to stop it  
  
3. In your browser go to [host.docker.internal](host.docker.internal)
  
4. Remove the containers & volume
  ```
  # In the root of this project run
  docker-compose down -v
  ```

