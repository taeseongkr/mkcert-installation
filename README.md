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
## Update for Windows 
1. Install Choco
2. Download 2 files rootCA-key.pem and rootA.pem
3. Create folder named mkcert
4. Move 2 downloaded files to mkcert
5. Run command ```$env:CAROOT="C://Users/mkcert" ```
6. Run ```mkcert -install```
7. Restart your computer
# Install certificate on MacOS

1. Download the macos-setup.sh file.

2. Run the above file with the sh command in the terminal.
```shell
$ (your-directory) sh ./macos-setup.sh

```
