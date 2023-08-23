# mkcert-installation
# Install certificate on Windows
 1. Download the window-setup.ps1 file
 
 2. Run PowerShell with administrator privileges.

 3. Change the security policy by entering the command below.
```shell
$ Set-ExecutionPolicy RemoteSigned

$ Set-ExecutionPolicy AllSigned
```
  4. Run the downloaded file.
```shell
$ (your-directory) .\window-setup.ps1

```
## Update
Set-ExecutionPolicy Bypass -Scope Process

[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((Invoke-WebRequest -Uri https://chocolatey.org/install.ps1).Content)

choco -v
# Install certificate on MacOS

1. Download the macos-setup.sh file.

2. Run the above file with the sh command in the terminal.
```shell
$ (your-directory) sh ./macos-setup.sh

```
